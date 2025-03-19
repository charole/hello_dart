void main() {
  Lecture webProgramming = new Lecture(name: "웹 프로그래밍", students: ["강남", "강북", "강서"]);
  Lecture mobileProgramming = new Lecture(name: "모바일 프로그래밍", students: ["가나", "다라", "마바"]);

  webProgramming.printName();
  mobileProgramming.printName();

  webProgramming.printStudents();
  mobileProgramming.printStudents();

  Lecture wp = Lecture.fromJson({
    'name': "웹프",
    'students': ['test', 'abc']
  });
  wp.printName();
  wp.printStudents();
}

class Lecture {
  String name;
  List<String> students;

  // Lecture(String name, List<String> students):
  //       this.name = name,
  //       this.students = students;

  // Lecture(this.name, this.students);

  Lecture({ required this.name, required this.students });

  // 생성자를 추가하여 다른 타입의 값도 파싱해서 가져올 수 있음
  Lecture.fromJson(Map<String, dynamic> json):
        this.name = json['name'],
        this.students = json['students'];

  void printName() {
    print('해당 수업은 $name 입니다.');
  }

  void printStudents() {
    print('수강생은 $students 입니다.');
  }
}