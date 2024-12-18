import 'dart:io';

int removeDuplicates(List<int> nums) {
  if (nums.isEmpty) return 0;

  int i = 0;
  for (int j = 1; j < nums.length; j++) {
    if (nums[j] != nums[i]) {
      i++;
      nums[i] = nums[j];
    }
  }
  return i + 1;
}

void main() {
  print("Enter the array elements separated by spaces:");
  List<int> nums = stdin.readLineSync()!
      .split(' ')
      .map((str) => int.parse(str))
      .toList();

  int length = removeDuplicates(nums);

  print("The number of unique elements is: $length");
  print("The modified array is: ${nums.sublist(0, length)}");
}
