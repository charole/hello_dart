// 다트는 객체지향 언어로써, 모든 변수는 오브젝트를 상속 받고 있음. 기본적으로 값 할당이 없는 경우 null을 할당

void main() {
  // var name = "이건희"; // 타입을 추론하여 자동으로 String 반환. 다만 다른 값을 할당하면 타입 에러 발생. 최대한 var는 사용하지 않는 것이 좋음
  // name = 1; // 위에 name이 string으로 추론되어 1 할당 시 에러 발생

  String name = "이건희";
  print(name.runtimeType); // type 출력 가능 (return: String)
  print(name);
  print("$name의 타입은 ${name.runtimeType}입니다."); // 간략하게 변수 이름만 사용하는 경우에는 달러만, 그 안에 메소드, 멤버변수 사용 시에는 중괄호 포함

  String name2 = '이건희'; // 홀따옴표로 정의 가능
  print('$name2 $name ${name2.runtimeType}');

  // dynamic, var 차이? dynamic은 다른 타입의 값 재할당 가능하지만, var는 동일 타입만 재할당 가능
  dynamic name3 = '이건희'; // 할당된 값에 따라 타입 추론 됨.
  print(name3);
  var name4 = '이건희2';
  print(name4);

  print('$name3은 ${name3.runtimeType}');
  print('$name4은 ${name4.runtimeType}');

  String name5;
  String? name6;
  // name = null; // name5는 null 할당 받지 못함. 다만, 변수명 옆에 ? 붙이면 할당 가능
  print(name6);

  // noneNullable(name6); name6는 null이 할당 가능하여 에러 발생. 변수명 옆에 !연산자를 붙여서 난 null이 아니야 라고 알릴 수 있음
  noneNullable(name6!);

  // final, const 차이? const는 build time 빌드타임 기준으로 처리되고, final은 런타임에 처리가 됨. final은 런타임에 처리되기 때문에 추후에 add를 실행했을 때 값 추가가 가능함. 그러나 const는 빌드 타임에 처리되기 때문에 이후 add와 같은 메소드로 list에 요소 추가 불가능
  final String name7 = 'lee kun hee';
  // name7 = '변경 불가'; // final은 상수 선언이기 때문에 수정 불가

  const String name8 = '이건희';
  // name8 = '이건희2'; // const로 선언한 경우에도 값이 변경 불가능함
}

// underscore는 사용하지 않는 매개변수를 추가할 때 작성함
void hello(String _, String name) {
  print("$name, hello");
}

void noneNullable(String name) {
  print(name);
}