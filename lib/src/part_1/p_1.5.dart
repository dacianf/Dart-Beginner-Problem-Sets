import 'dart:io';

// 1.5 Write a program to check if two given non-negative integers have the same last digit.
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

  int lastDigitOfFirstNumber = firstNumber % 10;

  int lastDigitOfSecondNumber = secondNumber % 10;

  if (lastDigitOfFirstNumber == lastDigitOfSecondNumber) {
    print("The given numbers have the same last digit");
  } else {
    print("The given numbers do NOT have the same last digit");
  }
}
