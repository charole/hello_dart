// main은 int, void, Future int, Future void만 반환 가능하여 Stream 타입 반환이 허용되지 않아 함수를 따로 빼서 main에 호출하는 형태로 사용해야 함(우리가 직접 stream을 사용하는 경우는 거의 없지만 라이브러리 내에서는 사용하는 경우가 있어서 이해하기 위해 알아두면 좋음)
void main() {
  playAllAddOne().listen((val) {
    print('playAllAddOne: $val');
  });
  // addOne(3).listen((val) {
  //   print('addOne(3): $val');
  // });
  // addOne(5).listen((val) {
  //   print('addOne(5): $val');
  // });
}

Stream<int> playAllAddOne() async* {
  yield* addOne(3);
  yield* addOne(5);
}

Stream<int> addOne(int count) async* {
  int num = 1;
  for (int i = 0; i < count; i++) {
    yield ++num;
    await Future.delayed(Duration(seconds: 1));
  }
}