double average(List<int> nums){
  
  int sum=0;
  for (int number in nums){
    sum+=number;
  }
 double average = sum/nums.length.toDouble();
 return average;

}

void main() {
  List<int> nums = [10, 20, 30, 40, 50];
  double result = average(nums);
  print("The average of the nums is: $result");
}