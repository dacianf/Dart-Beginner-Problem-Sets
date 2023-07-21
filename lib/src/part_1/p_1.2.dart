import 'dart:io';

// 1.2 Write a program to check whether a given positive number is a multiple of 3 or a multiple of 7.
void main() {
  // Print a nice message so the users can see something is expected out of them
  print("Please enter a number:");
  // Read line from keyboard
  String? inputFromKeyboard = stdin.readLineSync();
  // Since input can be null, we provide empty string as default value
  // Be aware that `int.parse` function returns an error if the parameter it
  // receives is not a valid integer and the program is killed
  int number = int.parse(inputFromKeyboard ?? "");

  if (number % 3 == 0 && number % 7 == 0) {
    print("Number is multiple of both 3 and 7");
  } else if (number % 7 == 0) {
    print("Number is multiple of 7");
  } else if (number % 3 == 0) {
    print("Number is multiple of 3");
  } else {
    print("Number is NOT a multiple of 3 or 7");
  }
}
