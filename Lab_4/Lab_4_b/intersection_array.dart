import 'dart:io';

List<int> findIntersection(List<int> nums1, List<int> nums2) {
  Map<int, int> countMap = {};
  List<int> result = [];

  for (int num in nums1) {
    countMap[num] = (countMap[num] ?? 0) + 1;
  }

  for (int num in nums2) {
    if (countMap.containsKey(num) && countMap[num]! > 0) {
      result.add(num);
      countMap[num] = countMap[num]! - 1;
    }
  }

  result.sort();

  return result;
}

void main() {
  print("Enter the elements of the first array separated by spaces:");
  List<int> nums1 = stdin.readLineSync()!
      .split(' ')
      .map((str) => int.parse(str))
      .toList();

  print("Enter the elements of the second array separated by spaces:");
  List<int> nums2 = stdin.readLineSync()!
      .split(' ')
      .map((str) => int.parse(str))
      .toList();

  List<int> intersection = findIntersection(nums1, nums2);

  print("The intersection of the two arrays is: $intersection");
}
