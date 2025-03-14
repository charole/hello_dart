void main() {
  // int num = 1;
  // if (num % 3 == 0) {
  //   print('나머지가 0 입니다.');
  // } else if (num % 3 == 1) {
  //   print('나머지가 1 입니다.');
  // } else {
  //   print('나머지가 2 입니다.');
  // }

  // int num = 3;
  // switch(num % 3) {
  //   case 0:
  //     print('나머지가 0 입니다');
  //   case 1:
  //     print('나머지가 1 입니다');
  //   default:
  //     print('나머지가 2 입니다');
  // }

  // dart3 버전 이후로는 case에 연산자 사용 가능
  // int num = 1;
  // switch (num) {
  //   case 0 && < 3:
  //     print('숫자는 0~2');
  //   case 3 && < 5:
  //     print('숫자는 3~5');
  //   case > 10:
  //     print('숫자는 10보다 큽니다');
  //   default:
  //     print('그 외 숫자입니다.');
  // }

  // continue 이용하여 특정 case로 이동 가능
  // int num = 1;
  // switch (num) {
  //   case 0 || < 3:
  //     print('숫자는 0~2');
  //     continue case10;
  //   case 3 && < 5:
  //     print('숫자는 3~5');
  //   case10:
  //   case > 10:
  //     print('숫자는 10보다 큽니다');
  //   default:
  //     print('그 외 숫자입니다.');
  // }

  // int sum = 0;
  // for (int i =0; i < 10; i++) {
  //   sum += i;
  // }
  // print(sum);

  // int sum = 0;
  // List<int> nums = [1,2,3,4,5];
  // for (int num in nums) {
  //   sum += num;
  // };
  // print(sum);

  // int sum = 0;
  // while (sum < 10) {
  //   print('+1');
  //   sum++;
  // }
  // print(sum);

  // do는 실행을 먼저하고, while은 체크를 먼저 함
  // int sum = 0;
  // do {
  //   print('+1');
  //   sum++;
  // } while(sum < 10);
  // print(sum);

  // int sum = 0;
  // while (true) {
  //   break; // while 중단
  // }
  // print(sum);

  // int sum = 0;
  // while (true) {
  //   if (sum > 10) {
  //     break;
  //   } else {
  //     sum ++;
  //     continue;
  //   }
  //   sum += 100; // continue로 인해 처음으로 돌아가서 이 구문은 실행 될 일이 없음
  // }
  // print(sum);

  // Color myColor = Color.red;
  // if (myColor == Color.red) {
  //   print('내 색깔은 빨간색입니다.');
  // }

  // enum을 switch에서 설정할 경우 모든 유효 값들에 대한 처리가 필요함. 없을 경우 에러 발생
  // Color myColor = Color.red;
  // switch (myColor) {
  //   case Color.red:
  //     print('is red!');
  //   case Color.green:
  //     print('is green!');
  //   case Color.blue:
  //     print('is blue!');
  //   default:
  //     print('other colors');
  // }

  // String returnStringValue = printHelloReturnString('lee kun hee');
  // print(returnStringValue);

  // printHello('이건희', 'Dart');

  // printHello('이건희');

  // printHelloWithNamedParameter(name: '이건희', myName: 'Dart');
  // printHelloWithNamedParameter(name: '이건희');

  // print(sumNumbersWithArrowFunction(1, 2));

  Operation operation = add;
  print(operation(10, 20));

  operation = sub;
  print(operation(10, 20));
}

// enum Color { red, green, blue, black }

// optional 로 파라미터를 설정하기 위해서는 [] 대괄호와 ? 연산자 필요.
// void printHello(String name, [String? myName]) {
//   print('Hello $name, My Name is $myName');
// }

// void printHello(String name, [String? myName = 'Dart']) {
//   print('Hello $name, My Name is $myName');
// }

// String printHelloReturnString(String name) {
//   print('Hello $name!');
//   return name;
// }

// void printHelloWithNamedParameter({ required String name, String myName = 'Dart' }) {
//   print('Hello $name, My Name Is $myName');
// }

// int sumNumbersWithArrowFunction(int x, int y) => x + y;

// 오퍼레이션은 언제 사용하는가? action 값을 외부에서 전달 받는다고 했을 때, 해당 action 값에 따라 실행되는 함수가 달라져야 할 때 사용함.
typedef Operation = int Function(int x, int y);

int add(int x, int y) => x + y;
int sub(int x, int y) => x - y;