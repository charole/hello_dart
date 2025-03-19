void main() {
  // new 키워드 대신 const를 사용하여 불변성 유지
  Lecture webProgramming = const Lecture(name: "웹 프로그래밍", students: ["강남", "강북", "강서"]);

  webProgramming.printName();
  webProgramming.printStudents();

  // webProgramming.name = 'test'; // final로 인해 변경 불가
  // webProgramming.printName();
  // webProgramming.students.add('test'); // 컴파일 단계에서는 에러 체크 불가
  webProgramming.printStudents();
}

class Lecture {
  final String name;
  final List<String> students;

  // 생성자 앞에 const를 붙여주면 인스턴스에도 const를 붙일 수 있는데, 이렇게하면 add를 통해 추가를 못하게 막을 수 있음
  const Lecture({ required this.name, required this.students });

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