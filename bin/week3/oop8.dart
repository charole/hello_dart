void main() {
  MajorLecture majorLecture = MajorLecture('모프');
  majorLecture.printName();
  
  if (majorLecture is LectureInterface) {
    print('majorLecture is LectureInterface');
  }

  // 인터페이스의 문제점은 인터페이스 자체도 객체 생성 가능. 이러한 문제점을 해결하기 위해 추상화가 가능(abstract 키워드 사용)
  // LectureInterface inter = LectureInterface('no!');
  // inter.printName();
}

// dart3 부터는 interface 키워드를 사용하여 명시 가능하지만 interfaces는 객체 생성이 가능하여 abstract 사용하면 인터페이스를 추상화 생성하기 때문에 객체 생성 불가능하게 막을 수 있음.
// interface class LectureInterface {
//   String name;
//
//   LectureInterface(this.name);
//
//   void printName() {}
// }

abstract class LectureInterface {
  String name;

  LectureInterface(this.name);

  void printName() {}
}

// 누락된 메소드를 모두 구현해야 함. (@override는 내부적으로 자동으로 입력되어 누락해도 문제 없음), 암묵적으로 어떤 클래스를 입력해야 하는지 암묵적으로 알 수 있음
class MajorLecture implements LectureInterface {
  String name;

  MajorLecture(this.name);

  void printName() {
    print("해당 수업은 $name 입니다.");
  }
}