// 층 수를 입력해서, 해당 층 수 만큼 별을 계단식으로 출력하는 프로그램을 작성해보세요
// void main() {
//   int step = 3;
//   for (int i = 1; i <= step; i++) {
//     print('*' * i);
//   }
// }

// 계단을 뒤집어서 출력하도록 프로그램을 변경해보세요
// void main() {
//   int step = 3;
//   for (int i = 1; i <= step; i++) {
//     String spaces = ' ' * (step - i);
//     String stars = '*' * i;
//     print(spaces + stars);
//   }
// }

// 계단을 양쪽 대칭으로 출력하도록 프로그램을 변경해보세요
// void main() {
//   int step = 3;
//   for (int i = 1; i <= step; i++) {
//     String spaces = ' ' * (step - i);
//     String stars = '*' * (2 * i - 1);
//     print(spaces + stars);
//   }
// }

// 마지막 출력 결과를 반대로 뒤집어서 출력하도록 프로그램을 변경해보세요
void main() {
  int step = 3;
  for (int i = step; i >= 1; i--) {
    String spaces = ' ' * (step - i);
    String stars = '*' * (2 * i - 1);
    print(spaces + stars);
  }
}