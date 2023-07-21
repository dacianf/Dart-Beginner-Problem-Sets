// 1.9 Write a program that gets an array of numbers and provides the frequency of each name
// Ex. ["Emily", "Liam", "Olivia", "Noah", "Ava", "Emma", "Sophia", "Liam", "Mia", "Olivia", "Olivia", "Liam", "Amelia", "Elijah", "Liam", "Emily"] ->
// [  "Frequency of Emily is 2",  "Frequency of Liam is 4",  "Frequency of Olivia is 3",  "Frequency of Noah is 1",  "Frequency of Ava is 1",  "Frequency of Emma is 1",  "Frequency of Sophia is 1",  "Frequency of Mia is 1",  "Frequency of Amelia is 1",  "Frequency of Elijah is 1"]
// ** Order of the result is not important
void main() {
  // We hardcode here the input
  List<String> inputArray = [
    "Emily",
    "Liam",
    "Olivia",
    "Noah",
    "Ava",
    "Emma",
    "Sophia",
    "Liam",
    "Mia",
    "Olivia",
    "Olivia",
    "Liam",
    "Amelia",
    "Elijah",
    "Liam",
    "Emily"
  ];

  // Since the problem asks us to count the frequency of some names we immediately
  // think of a data structure that help us with quick searches for frequency
  // -- Map -- or Dictionary in other programming languages

  // We need to declare a Map first
  // Since the maps are built using <Key, Value> pairs and we need for each name
  // to know its frequency we need a map with the key being the names and value
  // being the frequency ==> Map<String, Int>
  Map<String, int> frequencyMap = {};

  // To build our frequency map we need to iterate throughout the input array
  // and for each element update its frequency in our map

  // For each element from input array
  for (String element in inputArray) {
    // We get the frequency value we have in map for our element
    int? frequencyForCurrentElement = frequencyMap[element];

    // If `frequencyForCurrentElement` is null, it means that there is no value
    // for our current element in our map yet
    if (frequencyForCurrentElement == null) {
      // Therefore we have to put 1 there, since we found it once
      frequencyMap[element] = 1;
    } else {
      // If there is already a value for our frequency we just increase it by 1
      frequencyMap[element] = frequencyForCurrentElement + 1;
    }
  }

  // Now we print our results
  frequencyMap.forEach((key, value) {
    print("Frequency of $key is $value");
  });
}
