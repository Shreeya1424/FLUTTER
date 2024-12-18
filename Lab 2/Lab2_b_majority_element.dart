import 'dart:io';

int findMajorityElement(List<int> nums) {
  int count = 0;
  int? candidate;

  for (int num in nums) {
    if (count == 0) {
      candidate = num;
    }
    count += (num == candidate) ? 1 : -1;
  }

  return candidate!;
}

void main() {
  print("Enter the array elements separated by spaces:");
  List<int> nums = stdin.readLineSync()!
      .split(' ')
      .map((str) => int.parse(str))
      .toList();

  int majorityElement = findMajorityElement(nums);

  print("The majority element is: $majorityElement");
}
