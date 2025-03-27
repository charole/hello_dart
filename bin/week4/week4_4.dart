void main() {
  List<int> numbers = [3, 6, 9, 12, 15];

  int total = numbers.reduce((acc, cur) => acc + cur);
  print(total);

  List<String> mp = ['안녕하세요,', '모바일 프로그래밍 수업은', '매주 토요일 입니다.'];

  String totalMp = mp.reduce((acc, cur) => acc + cur);
  print(totalMp);

  int totalMp2 = mp.fold<int>(0, (acc, cur) => acc + cur.length); // reduce는 입력한 타입만 return이 가능하여 다른 타입 반환 시에는 fold 사용
  print(totalMp2);
}
