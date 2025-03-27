void main() {
  Map<String, String> student = {'20201111': 'a', '20211111': 'b'};

  Map<String, String> newStudent = student.map((key, value) => MapEntry('99$key', '졸업생 $value'));
  print(newStudent);

  List<Map<String, String>> students = [
    {'lecture': '모프', 'name': 'a'},
    {'lecture': '모프', 'name': 'b'},
    {'lecture': '모프', 'name': 'c'},
    {'lecture': '웹프', 'name': 'd'},
    {'lecture': '웹프', 'name': 'e'},
  ];

  List<Map<String, String>> mpStudents = students.where((st) => st['lecture'] == '모프').toList();
  print(mpStudents);
}
