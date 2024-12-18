void main() {
  List<int> nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4];
  int maxSum = findMaxSubarraySum(nums);
  print('The largest subarray sum is: $maxSum');
}

int findMaxSubarraySum(List<int> nums) {
  int maxEndingHere = nums[0];
  int maxSoFar = nums[0];

  for (int i = 1; i < nums.length; i++) {
    maxEndingHere = max(nums[i], maxEndingHere + nums[i]);
    maxSoFar = max(maxSoFar, maxEndingHere);
  }

  return maxSoFar;
}

int max(int a, int b) {
  return (a > b) ? a : b;
}
