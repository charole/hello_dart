// '_' 를 붙이면 private로 외부 파일에서 접근 불가. (class, variable, method 모두 private로 정의 가능)
class _Lecture {
  final String _name;
  final List<String> students;

  const _Lecture( this._name, this.students );

  _Lecture.fromJson(Map<String, dynamic> json):
        this._name = json['name'],
        this.students = json['students'];

  void _printName() {
    print('해당 수업은 $_name 입니다.');
  }

  void printStudents() {
    print('수강생은 $students 입니다.');
  }

  int get studentCount => students.length;
  String get firstStudent => students[0];

  set firstStudent(String _name) {
    students[0] = _name;
  }

  // override를 사용하여 == 비교에 대해 오버라이딩 함
  @override
  bool operator == (Object other) {
    return other is _Lecture && other._name == this._name;
  }

  @override
  int get hashCode => _name.hashCode;
}