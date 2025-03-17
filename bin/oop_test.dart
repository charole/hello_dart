void main() {
  if ([1, 2, 3] == [1, 2, 3]) {
    print('Is Name?');
  } else {
    print('Is not same');
  }

  bool isSame = isSameArr(number1, number1);
  print('is same? $isSame');
}

List<int> number1 = [1, 2, 3];
List<int> number2 = [1, 2, 3];

bool isSameArr(List<int> arr1, List<int> arr2) => arr1 == arr2;