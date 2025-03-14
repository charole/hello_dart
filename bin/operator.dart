void main() {
  // int number = 1;
  // print (-number);
  // int number2 = 5;
  // print(~number2);
  // int num1 = 1;
  // int num2 = 2;
  //
  // var div = num1 / num2;
  // print('$div type is ${div.runtimeType}'); // var인 경우 int 2개로 연산하더라도 dobule 이 나옴. 나눗셈 연산 시 무조건 double로 출력됨
  //
  //  int div2 = num1 ~/ num2; // 몫만 반환
  //  int div3 = (num1 / num2).toInt();

  // List<int>? maybeNumbers;
  // // print(maybeNumbers); // 에러 발생
  // print(maybeNumbers?[0]); // ? 연산자로 null인 경우 처리하지 않도록 가능
  //
  // print('null -coalescing: ${maybeNumbers ?? [1, 2, 3]}'); // maybeNumbers가 null인 경우 [1, 2, 3]이 반환됨

  // int? number1;
  // number1 ??= 5;
  // // print(number1); // null인 경우 5 할당
  // number1 ??= 10; // 이미 5가 할당되어 10이 할당되지 않음
  // print(number1);

  // String? name;
  // print(name?.toUpperCase()); // ? 연산자 사용하면 null 이어도 에러 발생하지 않음
  //
  // List<int>? numbers;
  // print(numbers?.length); // 동일하게 옵셔널 체이닝 적용 필요
  // int length = numbers?.length ?? 0;
  // print('length? $length');

  // Object name = "Dart";
  // hello(name as String); // type cast 사용 시 String으로 타입 단언함

  // var a = 1;
  // print(a is int);
  // print(a is! int);
  // print(a is! String);

  // bool isPublic = true;
  // var visibility = isPublic ? 'public' : 'private'; // true인 경우 public, false인 경우 private 출력
  // print(visibility);
  //
  // // 위와 동일 삼항연산자는 아래와 동일
  // if (isPublic) {
  //   visibility = 'public';
  // } else {
  //   visibility = 'private';
  // }

  // String? name;
  // String playerName = name ?? 'Guest';
  // print(playerName); // name이 없는 경우 Guest 출력

  // StringBuffer strBuf = new StringBuffer();
  // strBuf..write('Hi ')..write('My Name Is ')..write('KunHee'); // .. 연산자 사용하여 메소드를 이어서 작성 가능. 원래는 strBuf().write(); strBuf().write(); strBuf().write(); 반복하여 작성해야 함. 물론 newStringBuffer()에서 ..연산자 이용하여 바로 이어서 작성 가능함
  //
  // print(strBuf.toString());

  // StringBuffer? strBuf;
  // print(strBuf);
  // strBuf?..write('Hi')..write('My Name Is'); // 이미 앞에서 ?가 붙어서 뒤에서는 ?를 안 붙여 줘도 됨

  // var list = [1, 2, 3];
  // var list2 = [0, ...list]; // spread 연산자 사용 가능
  // print(list2);

  List<int>? list;
  List<int> list2 = [0, ...?list]; // ... 뒤에 ? 붙여서 옵셔널 체이닝 사용 가능
  print(list2);
}

// void hello(String name) {
//     print('Hello $name');
// }
