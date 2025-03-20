void main() {
  MajorLecture database = MajorLecture("데이터 베이스", ["a", "b"]);
  database.printName();
  database.printStudents();
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
}

// extends를 통해 자식이 부모를 상속 받고 super를 통해 사용 할 수 있음
class MajorLecture extends Lecture {
  MajorLecture(String name, List<String> students):
      super(name: name, students: students);
}