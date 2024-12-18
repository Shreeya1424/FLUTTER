import 'dart:io';

int findSingleNumber(List<int> nums) {
  int result = 0;

  for (int num in nums) {
    result ^= num;
  }

  return result;
}

void main() {
  print("Enter the array elements separated by spaces:");
  List<int> nums = stdin.readLineSync()!
      .split(' ')
      .map((str) => int.parse(str))
      .toList();

  int singleNumber = findSingleNumber(nums);

  print("The element that appears only once is: $singleNumber");
}
