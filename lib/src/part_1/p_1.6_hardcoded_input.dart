

// 1.6 Write a program to find the sum of all numbers within an array.
void main() {
  // We hardcode here the input
  List<int> inputArray = [2, 3652, 23, 32, 0];

  // 1st option -- iteration with for and simple add
  int sumWithForAndSimpleAdd = 0;
  // Here we use a for with an index to iterate in the array
  for (int i = 0; i < inputArray.length; i++) {
    // With `inputArray[i]` we get the element from the `inputArray` at position `i`
    // And for the sum we use the simple equal with add method: `result = a + b`
    sumWithForAndSimpleAdd = sumWithForAndSimpleAdd + inputArray[i];
  }

  // 2nd option -- iteration with for and shorthand add
  int sumWithForAndShorthandAdd = 0;
  // Here we use a for with an index to iterate in the array
  for (int i = 0; i < inputArray.length; i++) {
    // With `inputArray[i]` we get the element from the `inputArray` at position `i`
    // And for the sum we use the shorthand add method: `result += element_at_position_i`
    // which is equivalent with `result = result + element_at_position_i`
    sumWithForAndShorthandAdd += inputArray[i];
  }

  // 3rd option -- iteration with forEach and shorthand add
  int sumWithForEachAndShorthandAdd = 0;
  // Here we use a forEach to iterate in the array
  // This means that we don't need an index anymore, we get directly the element
  // Behind the scene it's a for as above where `element = inputArray[i]`
  for (int element in inputArray) {
    sumWithForEachAndShorthandAdd += element;
  }

  // 4th option -- iteration with while and shorthand add
  int sumWithWhileAndShorthandAdd = 0;
  // Since while can't initialise any values we have to declare and initialise
  // our iterating index by ourselves
  int whileIndex = 0;
  // Here we use a while with an index to iterate in the array
  while (whileIndex < inputArray.length) {
    sumWithWhileAndShorthandAdd += inputArray[whileIndex];
    // Here we need to increase the index
    // `whileIndex++` is equivalent with `whileIndex += 1` and with `whileIndex = whileIndex + 1`
    whileIndex++;
  }

  // 5h option -- functional programming using fold operation on list
  int sumWithFoldOperation =
      // Fold is behind the scene a for that calls a function -- check DOCS
      inputArray.fold(0, (previousValue, element) => previousValue += element);

  // Now we check if all of our results are the same
  // We just make sure that first sum is equal with all the others,
  // therefore we can simply say that all of them are equl
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
      "2nd method was using a for iteration with a shorthand add and we got: $sumWithForAndShorthandAdd;\n"
      "3rd method was using a forEach iteration with a shorthand add and we got: $sumWithForEachAndShorthandAdd;\n"
      "4th method was using a while iteration with a shorthand add and we got: $sumWithWhileAndShorthandAdd;\n"
      "5th method was using fold operation on list and we got: $sumWithFoldOperation;\n"
      "$finalMessage");
}
