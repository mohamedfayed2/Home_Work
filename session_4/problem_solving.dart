class Solution {
  bool containsDuplicate(List<int> nums) {
    for (int i = 0; i < nums.length; i++) {
      int number = nums[i];
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[j] == number) {
          return true;
        }
      }
    }
    return false;
  }
}
