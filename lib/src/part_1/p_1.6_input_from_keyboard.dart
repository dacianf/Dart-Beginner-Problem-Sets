import 'dart:io';

// 1.6 Write a program to find the sum of all numbers within an array.
void main() {
  // In this version we read the input from keyboard

  // Print a nice message so the users can see something is expected out of them
  print("Please enter the length of the array:");

  // Read line from keyboard that represents the length of the needed array
  String? arrayLengthInputFromKeyboard = stdin.readLineSync();

  // Since input can be null, we provide empty string as default value
  // Be aware that `int.parse` function returns an error if the parameter it
  // receives is not a valid integer and the program is killed
  int arrayLength = int.parse(arrayLengthInputFromKeyboard ?? "");

  // Here we build the array/list/vector
  List<int> inputArray = [];

  // Using the provided array length we read from keyboard the the numbers from
  // the array
  for (int i = 0; i < arrayLength; i++) {
    // Print a nice message so the users can see something is expected out of them
    print("Please enter number $i out of $arrayLength:");
    String? inputFromKeyboard = stdin.readLineSync();

    // Add in our array the number read from the keyboard
    // Be aware that `int.parse` function returns an error if the parameter it
    // receives is not a valid integer and the program is killed
    inputArray.add(int.parse(inputFromKeyboard ?? ""));
  }

  // Below we implement different ways to perform the sum of a Dart list

  // 1st option -- iteration with for and simple add
  int sumWithForAndSimpleAdd = 0;
  for (int i = 0; i < inputArray.length; i++) {
    sumWithForAndSimpleAdd = sumWithForAndSimpleAdd + inputArray[i];
  }

  // 2nd option -- iteration with for and shorthand add
  int sumWithForAndShorthandAdd = 0;
  for (int i = 0; i < inputArray.length; i++) {
    sumWithForAndShorthandAdd += inputArray[i];
  }

  // 3rd option -- iteration with forEach and shorthand add
  int sumWithForEachAndShorthandAdd = 0;
  for (int element in inputArray) {
    sumWithForEachAndShorthandAdd += element;
  }

  // 4th option -- iteration with while and shorthand add
  int sumWithWhileAndShorthandAdd = 0;
  int whileIndex = 0;
  while (whileIndex < inputArray.length) {
    sumWithWhileAndShorthandAdd += inputArray[whileIndex];
    whileIndex++;
  }

  // 5h option -- functional programming using fold operation on list
  int sumWithFoldOperation =
      inputArray.fold(0, (previousValue, element) => previousValue += element);

  // Now we check if all of our results are the same
  // We just make sure that first sum is equal with all the others,
  // therefore we can simply say that all of them are equal
  bool areResultsTheSame =
      sumWithForAndSimpleAdd == sumWithForAndShorthandAdd &&
          sumWithForAndSimpleAdd == sumWithForEachAndShorthandAdd &&
          sumWithForAndSimpleAdd == sumWithWhileAndShorthandAdd &&
          sumWithForAndSimpleAdd == sumWithFoldOperation;

  // We a message to be displayed on screen based
  String finalMessage = "";
  if (areResultsTheSame) {
    finalMessage = "All the results are the same";
  } else {
    finalMessage = "Something is wrong! PLEASE CHECK!!!";
  }

  // Here we print the final details
  print("We calculated the sum of $inputArray in 5 different ways:\n"
      "1st method was using a for iteration with a simple add and we got: $sumWithForAndSimpleAdd;\n"
      "2nd method was using a for iteration with a simple add and we got: $sumWithForEachAndShorthandAdd;\n"
      "3rd method was using a for iteration with a simple add and we got: $sumWithForEachAndShorthandAdd;\n"
      "4th method was using a for iteration with a simple add and we got: $sumWithWhileAndShorthandAdd;\n"
      "5th method was using a for iteration with a simple add and we got: $sumWithFoldOperation;\n"
      "$finalMessage");
}
