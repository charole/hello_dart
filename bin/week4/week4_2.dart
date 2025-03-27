void main() {
  List<String> students = ['a', 'b', 'c'];

  Iterable<String> newStudents = students.map((student) => '모바일 프로그래밍, $student').toList(); // map으로 return 하는 값은 원본 값과 다름
  print(newStudents);

  String images = '20250312,20250315,20250319';
  List<String> imageList = images.split(',');
  print(imageList);
}
