void main() {
  List<Map<String, String>> students = [
    {'lecture': 'mobile', 'name': 'a'},
    {'lecture': 'mobile', 'name': 'b'},
    {'lecture': 'mobile', 'name': 'c'},
    {'lecture': 'web', 'name': 'd'},
    {'lecture': 'web', 'name': 'e'},
  ];

  // null 이 들어올 수 있어서 !나, ?? 안 붙이면 에러 발생
  List<Student> newStudents = students.map((student) => Student(lecture: student['lecture'] ?? '-', name: student['name'] ?? '-')).toList();

  print(newStudents);

  for (Student student in newStudents) {
    print(student.name);
  }

  List<Student> mpStudents = newStudents.where((student) => student.lecture == 'mobile').toList();
  print(mpStudents);
}

class Student {
  final String lecture;
  final String name;

  Student({ required this.lecture, required this.name });

  @override
  String toString() {
    return 'Student(lecture: $lecture, name: $name)';
  }
}
