import 'dart:async';

Future<void> asyncExample() async {
  print("Start of asyncExample");
  await Future.delayed(Duration(seconds: 2), () {
    print("Async operation completed");
  });
  print("End of asyncExample");
}

// Exercise 2
Future<int> fetchData() {
  return Future<int>.delayed(Duration(seconds: 1), () {
    return 42;
  });
}

void main() {
  // Exercise 2: 
  print("Before calling async");
  asyncExample();
  print("After calling async");

  // Exercise 3:
  print("\nFetching data...");
  fetchData().then((result) {
    print("Data fetched successfully: $result");
  });
  print("Main function completed");
}
