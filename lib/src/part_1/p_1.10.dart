// 1.10 Write a program that has two lists of names as an input and returns a list
// of names that are only in the 2nd one
// Ex. ["Emily", "Liam", "Noah", "Olivia", "Ava", "Emma"],
// [ "Sophia", "Liam", "Mia", "Olivia", "Lion", "Amelia", "Elijah", "Leo", "Emily"] —--->
// [ "Sophia", "Mia",  "Lion", "Amelia", "Elijah", "Leo"]
void main() {
  // We hardcode the input here
  List<String> firstList = ["Emily", "Liam", "Noah", "Olivia", "Ava", "Emma"];
  List<String> secondList = [
    "Sophia",
    "Liam",
    "Mia",
    "Olivia",
    "Lion",
    "Amelia",
    "Elijah",
    "Leo",
    "Emily"
  ];

  // Since the problem asks us to use a map and to check the presence of names
  // think that the data types we are going to use is String for names and
  // boolean for presence (you can use any other type you want to mark the
  // existence, since the Map returns null, if a key does not exist)

  // We need to declare a Map first
  // Since the maps are built using <Key, Value> pairs and we need for each name
  // to know if it exists so we need a map with the key being the names and value
  // being a flag that exist or not ==> Map<String, Bool>
  Map<String, bool> existenceMap = {};

  // To build our existence map we need to create a map from the list that we don't
  // need the elements from. To do so we iterate throughout firstList and add
  // each element from there in our existence map

  // For each element from the firstList
  for (String element in firstList) {
    // We add it into the map and mark that it exists
    existenceMap[element] = true;
  }

  // We declare and initialize our list of results
  List<String> results = [];

  // Now that we have our existence map with the elements we can go through the
  // elements of the second list and check if they exits in the first list aka
  // in our existence map

  // For each element from the names that have to be searched we search in our
  // existence map
  for (String name in secondList) {
    // Check if current name from the first list does not exist in our existence map
    if (!existenceMap.containsKey(name)) {
      // if it does not exists it means that it's only part of the 2nd list
      // so we add it to our results list
      results.add(name);
    }
  }

  // now we print our result
  print(results);
}
