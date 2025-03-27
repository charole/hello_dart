void main() {
  List<String> students = ['a', 'b', 'c'];

  print(students);
  print(students.toSet()); // 중복 없는 set 변환
  Map studentMap = students.asMap(); // map 변환
  print(studentMap.keys);
  print(studentMap.values);

  print(studentMap.keys.runtimeType); // iterable 타입. 순차적으로 접근 가능한 형. 직접 데이터를 추가, 수정하는 add/remove 사용 불가

  print(studentMap.keys.toList().runtimeType);

  Set studentSet = students.toSet();
  print(studentSet.toList());
}
