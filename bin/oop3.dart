void main() {
  Lecture webProgramming = const Lecture(name: "웹 프로그래밍", students: ["강남", "강북", "강서"]);

  print(webProgramming.studentCount);
  print(webProgramming.firstStudent);
  webProgramming.firstStudent = 'test';
  print(webProgramming.firstStudent);
}

class Lecture {
  final String name;
  final List<String> students;

  const Lecture({ required this.name, required this.students });

  Lecture.fromJson(Map<String, dynamic> json):
        this.name = json['name'],
        this.students = json['students'];

  void printName() {
    print('해당 수업은 $name 입니다.');
  }

  void printStudents() {
    print('수강생은 $students 입니다.');
  }

  // getter, setter를 사용하여 개발자들끼리 암묵적으로 의사소통 가능(의도 파악에 수월)
  int get studentCount => students.length;
  String get firstStudent => students[0];

  // 파라미터로 여러개가 들어갈 수 없음. equal로 바로 대입하기 때문
  set firstStudent(String name) {
    students[0] = name;
  }
}