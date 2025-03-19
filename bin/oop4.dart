void main() {
  // const는 빌드 타임에 선언되기 떄문에 same으로 출력 함
  Lecture webProgramming = Lecture(name: "웹 프로그래밍", students: ["강남", "강북", "강서"]);
  Lecture webProgramming2 = Lecture(name: "웹 프로그래밍", students: ["강남", "강북", "강서"]);
  Lecture webProgramming3 = const Lecture(name: "웹 프로그래밍", students: ["강남", "강북", "강서"]);
  Lecture webProgramming4 = const Lecture(name: "웹 프로그래밍", students: ["강남", "강북", "강서"]);

  if (webProgramming == webProgramming2) {
    print('is same');
  } else {
    print('is not same');
  }

  if (webProgramming3 == webProgramming4) {
    print('is same');
  } else {
    print('is not same');
  }
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

  int get studentCount => students.length;
  String get firstStudent => students[0];

  set firstStudent(String name) {
    students[0] = name;
  }

  // override를 사용하여 == 비교에 대해 오버라이딩 함
  @override
  bool operator == (Object other) {
    return other is Lecture && other.name == this.name;
  }

  @override
  int get hashCode => name.hashCode;
}