void main() {
  
  // Exercise 1
  List<int> numbers = [1, 3, 23, 18, 25, 2];
  int highestNumber = findHighestNumber(numbers);
  print("The highest number in the list is: $highestNumber");

  // Exercise 2: P
  Map<String, int> myMap = {"Nahom": 6739, "tibe": 51, "nazil": 2645};
  printKeysAndValues(myMap);

  // Exercise 3
  List<int> nums = [2, 1, 4, 5, 4, 3, 2, 6, 3];
  List<int> numsWithoutDuplicates = removeDuplicates(nums);
  print("\n List without duplicates: $numsWithoutDuplicates");
}



void printKeysAndValues(Map<dynamic, dynamic> myMap) {
  myMap.forEach((key, value) {
    print("Key: $key, Value: $value");
  });
}

List<T> removeDuplicates<T>(List<T> list) {
  Set<T> uniqueSet = Set<T>.from(list);
  return uniqueSet.toList();
}


int findHighestNumber(List<int> numbers) {
  if (numbers.isEmpty) {
    throw Exception("The list is empty.");
  }

  int highestNumber = numbers[0];

  for (int number in numbers) {
    if (number > highestNumber) {
      highestNumber = number;
    }
  }

  return highestNumber;
}
