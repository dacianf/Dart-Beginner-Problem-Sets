// 1.8 Write a program that has a list of names to be searched as an input and a
// list of known names as another input and tells us the names from the list to
// be searched that exist in the list with the known names. USE MAP
// Ex. ["Emily", "Liam", "Noah", "Olivia", "Ava", "Emma"],
// [ "Sophia", "Liam", "Mia", "Olivia", "Lion", "Amelia", "Elijah", "Leo", "Emily"] —--->
// [“Emily”, “Liam”, “Olivia”]
void main() {
  // We hardcode the input here
  List<String> namesToBeSearched = [
    "Emily",
    "Liam",
    "Noah",
    "Olivia",
    "Ava",
    "Emma"
  ];
  List<String> knownNames = [
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

  // To build our existence map we need to iterate throughout the input array
  // and for each element to mark it as it exists with true

  // For each element from the input array
  for (String element in knownNames) {
    // We add it into the map and mark that it exists
    existenceMap[element] = true;
  }

  // We declare and initialize our list of results
  List<String> results = [];

  // For each element from the names that have to be searched we search in our
  // existence map
  for (String name in namesToBeSearched) {
    // Check if the current name from list exists in our existence map
    // Similar way of doing this check is with `existenceMap.containsKey(name)`
    if (existenceMap[name] == true) {
      // if it exists, then we add it in the results list
      results.add(name);
    }
  }

  // now we print our result
  print(results);
}
