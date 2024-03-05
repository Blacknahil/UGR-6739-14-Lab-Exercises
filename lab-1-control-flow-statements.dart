
void main() {
  int dayNum = 3; 
  switch (dayNum) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid number.Enter a number between 1 and 7.");
  }

    // The first 10 numbers in the Fibonacci sequence using for loop in dart

  int n = 10;
  int fib2 = 0, fib1 = 1;
  for (int i = 0; i < n; i++) {
    print(fib1);
    int next = fib1 + fib2;
    fib2 = fib1;
    fib1= next;
  }
}

