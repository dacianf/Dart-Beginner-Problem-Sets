import 'dart:io';

// 1.3 Write a program to check whether a given positive number is an odd number.
void main() {
  // Print a nice message so the users can see something is expected out of them
  print("Please enter a number:");
  // Read line from keyboard
  String? inputFromKeyboard = stdin.readLineSync();
  // Since input can be null, we provide empty string as default value
  // Be aware that `int.parse` function returns an error if the parameter it
  // receives is not a valid integer and the program is killed
  int number = int.parse(inputFromKeyboard ?? "");

  if (number % 2 == 1) {
    print("The given number is an odd one.");
  } else {
    print("The given number is NOT an odd number.");
  }
}
