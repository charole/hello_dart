void main() {
  MajorLecture database = MajorLecture(name: "데이터 베이스", students: ["a", "b"]);
  database.printName();
  database.printStudents();
  database.printMajor();

  Lecture mp = Lecture(name: '모프', students: ['a']);

  GeneralLecture readAndDiscussion = GeneralLecture(name: '독서와 토론', students: ['a', 'b']);
  readAndDiscussion.printGeneral();

  if (mp is Lecture) {
    print('${mp.name}은 Lecture 입니다.');
  }
  // 안찍힘. 부모는 자식의 타입을 가질 수 없음
  if (mp is MajorLecture) {
    print('${mp.name}은 MajorLecture 입니다.');
  }

  if (database is MajorLecture) {
    print('${database.name}는 MajorLecture 입니다.');
  }
  // 자식은 상속받은 부모의 타입도 가진다.
  if (database is Lecture) {
    print('${database.name}는 Lecture 입니다.');
  }
  // 자식은 다른 형제의 타입을 가질 수 없다.
  if (database is GeneralLecture) {
    print('${database.name}는 GeneralLecture 입니다.');
  }

  if (readAndDiscussion is GeneralLecture) {
    print('${readAndDiscussion.name}는 GeneralLecture 입니다.');
  }

  print('모프 학생 수 : ${mp.studentCount}');
  mp.printInfo();

  print('데이터베이스 학생 수 : ${database.studentCount}');
  database.printInfo();
}

class Lecture {
  final String name;
  final List<String> students;

  Lecture({ required this.name, required this.students });

  void printName() {
    print('해당 수업은 $name 입니다.');
  }

  void printStudents() {
    print('수강생은 $students 입니다.');
  }

  void printInfo() {
    print('해당 수업은 $name이고, 전공 여부는 미정입니다.');
  }

  int get studentCount => students.length;
}

// 더 짧게 선언 가능
class MajorLecture extends Lecture {
  MajorLecture({ required super.name, required super.students });

  void printMajor() {
    print('해당 수업은 전공 수업입니다.');
  }

  @override
  void printInfo() {
    print('해당 수업은 $name이고, 전공 수업입니다.');
  }

  @override
  int get studentCount => super.studentCount + 1;
}

class GeneralLecture extends Lecture {
  GeneralLecture({ required super.name, required super.students });

  void printGeneral() {
    print('해당 수업은 교양 수업입니다.');
  }

  @override
  void printInfo() {
    print('해당 수업은 $name이고, 교양 수업입니다.');
  }
}