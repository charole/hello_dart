void main() async {
  Future<String> name = Future.value('mobile');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  print(await name);
  print(await number);
  print(await isTrue);

  print('start');
  Future.delayed(Duration(seconds: 2), () {
    print('2 seconds delay.');
  });
  print('end');
}
