void main() {
  Lecture lecture = Lecture();
  lecture.toString();

  if (lecture is Object) {
    print('lecture is object');
  }
}

// 모든 클래스들은 Object를 extends 하지 않아도 상시적으로 상속 받고 있음.
class Lecture {}