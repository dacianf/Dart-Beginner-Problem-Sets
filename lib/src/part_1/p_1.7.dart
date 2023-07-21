// 1.7 Write a program that gets an array of numbers and separate odd and even integers in separate arrays.
void main() {
  // Here we just hardcode the input so it will be easier to read
  // for keyboard input check `p_1.6_input_from_keyboard.dart` file
  List<int> inputArray = [3, 23, 2314, 754, 3213, 543, 984, 532];

  // Here we declare and initialize the result list of odd numbers
  List<int> oddNumbers = [];
  // Here we declare and initialize the result list of even numbers
  List<int> evenNumbers = [];

  // Here we use the forEach approach to iterate in the input array list
  for (int element in inputArray) {
    // Check if the current element is divisible with 2, aka is even
    if (element % 2 == 0) {
      // If element is even we add it in the even list
      evenNumbers.add(element);
    } else {
      // Otherwise it means that it's an odd number, so we add it in
      // the odd numbers list
      oddNumbers.add(element);
    }
  }

  // Here we just print the results
  print("The odd numbers are: $oddNumbers");
  print("The even numbers are: $evenNumbers");
}
