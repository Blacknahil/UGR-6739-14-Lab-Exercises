// Exercise 1
void throwException() {
  throw Exception("This is a generic exception");
}
// Exercise 2:
void catchSpecificException() {
  try {
    throwException();
  } catch (e) {
    if (e is Exception) {
      print("Caught a generic exception: $e");
    } else {
      print("Caught an unexpected exception: $e");
    }
  }
}
// Exercise 3: 
void tryCatchFinallyExample() {
  try {
    print("Start of try block");
    throwException(); // Simulating an exception
  } catch (e) {
    print("Caught an exception: $e");
  } finally {
    print("Finally block executed");
  }
}

void main() {
  // Exercise 1
  print("Exercise 1: Function that throws an exception");
  try {
    throwException();
  } catch (e) {
    print("Caught an exception: $e");
  }
  // Exercise 2
  print("\nExercise 2: Catch a specific type of exception");
  catchSpecificException();
  // Exercise 3
  print("\nExercise 3: Use a finally block");
  tryCatchFinallyExample();
}
