import 'dart:io';

// 1.1 Write a program to compute the sum of the two given integer values.
void main() {
  // Print a nice message so the users can see something is expected out of them
  print("Please enter the first number:");
  // Read line from keyboard
  String? firstInputFromKeyboard = stdin.readLineSync();
  // Since input can be null, we provide empty string as default value
  // Be aware that `int.parse` function returns an error if the parameter it
  // receives is not a valid integer and the program is killed
  int firstNumber = int.parse(firstInputFromKeyboard ?? "");

  print("Please enter the second number:");
  String? secondInputFromKeyboard = stdin.readLineSync();
  int secondNumber = int.parse(secondInputFromKeyboard ?? "");

  // We add the sum result in a variable
  int sum = firstNumber + secondNumber;

  // Using string format operation we print a nicely formatted message
  print("Sum of $firstNumber and $secondNumber is $sum");
}
