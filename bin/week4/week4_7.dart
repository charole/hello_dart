void main() async {
  addNumbers(1, 1);
  await addNumbersAsync(2, 2);
  await addNumbersAsync(3, 3);

  int result1 = await addNumbersReturnAsync(4, 4);
  int result2 = await addNumbersReturnAsync(5, 5);

  print('result1: $result1');
  print('result2: $result2');
}

void addNumbers(int x, int y) {
  print('addNumbers: $x, $y');

  Future.delayed(Duration(seconds: 2), () {
    print('sum: ${x + y}');
  });

  print('addNumbers: $x, $y done');
}

// 비동기를 처리하는 경우에는 Dart에서는 반드시 Future 키워드 사용 권장
Future<void> addNumbersAsync(int x, int y) async {
  print('addNumbers: $x, $y');

  await Future.delayed(Duration(seconds: 2), () {
    print('sum: ${x + y}');
  });

  print('addNumbers: $x, $y done');
}

Future<int> addNumbersReturnAsync(int x, int y) async {
  print('addNumbers: $x, $y');

  await Future.delayed(Duration(seconds: 2), () {
    print('sum: ${x + y}');
  });

  print('addNumbers: $x, $y done');
  return x + y;
}