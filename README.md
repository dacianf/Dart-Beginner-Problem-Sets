# Dart - UI testing training exercises

# DART

## 1. Short programs (each task in it's on main file and main function)

1. Write a program to compute the sum of the two given integer values.
2. Write a program to check whether a given positive number is a multiple of 3 or a multiple of 7.
3. Write a program to check whether a given positive number is an odd number.
4. Write a program to check whether a given positive number is an even number.
5. Write a program to check if two given non-negative integers have the same last digit.
6. Write a program to find the sum of all numbers within an array.
7. Write a program that gets an array of numbers and separate odd and even integers in separate
   arrays.
8. Write a program that has a list of names to be searched as an input and a list of known names as
   another input AND tells us the names from "the list to be searched" that exist in "the list with
   the known names". USE MAP
   e.g
   Input: ["Emily", "Liam", "Noah", "Olivia", "Ava", "Emma"],
   ["Sophia", "Liam", "Mia", "Olivia", "Lion", "Amelia", "Elijah", "Leo", "Emily"]
   Output: ["Emily", "Liam", "Olivia"]

9. Write a program that gets an array of numbers and provides the frequency of each name
   e.g
   Input: ["Emily", "Liam", "Olivia", "Noah", "Ava", "Emma", "Sophia", "Liam", "Mia", "Olivia", "Olivia", "Liam", "Amelia", "Elijah", "Liam", "Emily"]
   Output:["Frequency of Emily is 2", "Frequency of Liam is 4", "Frequency of Olivia is 3", "Frequency of Noah is 1", "Frequency of Ava is 1", "Frequency of Emma is 1", "Frequency of Sophia is 1", "Frequency of Mia is 1", "Frequency of Amelia is 1", "Frequency of Elijah is 1"]

10. Write a program that has two lists of names as an input and returns a list of names that are
    only in the 2nd one

    e.g
    Input: ["Emily", "Liam", "Noah", "Olivia", "Ava", "Emma"],
    ["Sophia", "Liam", "Mia", "Olivia", "Lion", "Amelia", "Elijah", "Leo", "Emily"]
    Output:["Sophia", "Mia", "Lion", "Amelia", "Elijah", "Leo"]

## 2. Functions (all in one file; all exercises below must be separate functions)

1. Write a function to compute the product of 3 given numbers
2. Write a function to transform Celsius degrees to Fahrenheit
3. Write a function to transform Fahrenheit degrees to Celsius
4. Write a function that prints a greeting for a person.
   e.g
   Input: Radu
   Output: Hello, Radu!

5. Write a function that returns a random number
6. Write a function that prints a random number
7. Write a function that returns current date
8. Write a function that prints current date
9. Write a function to compute the sum of the two given integer values. If the two values are the
   same, then return triple their sum.
10. Write a function to display the number of digits for a given non-negative integer.
    e.g
    Input: 342567
    Output: 6
    e.g
    Input: 45673
    Output: 5

11. Write a function to return the first digit of a non-negative integer.
    e.g
    Input: 1234
    Output: 1
    e.g
    Input: 23
    Output: 2

12. Write a function to split non-neSplit non negative integer digits into an array.
    e.g
    Input: 342567
    Output: [3,4,2,5,6,7]

13. Write a function that returns the N number of the fibonacci sequence. (Find what is Fibonnaci
    sequence) 0 1 1 2 3 5 8
    e.g
    Input: 2
    Output: 1
    e.g
    Input: 5
    Output: 3
    e.g
    Input: 11
    Output: 55

14. Write a function that returns the N numbers of the fibonacci sequence.
    e.g
    Input: 3
    Output: [0, 1, 1]
    e.g
    Input: 5
    Output: [0, 1, 1, 2, 3]

15. Write a function that gets an array of strings as a parameter and returns an array with the
    length of each string.
    Ex: ["Ana", "Mircea merge la coasa", "Dan is tall", "Maria"] =\> [3, 21, 11, 5]
    e.g
    Input: ["Ana", "Mircea merge la coasa", "Dan is tall", "Maria"]
    Output: [3, 21, 11, 5]

16. Write a function that gets a list of integers and an integer as parameter and returns the list
    with all the multiples of that number from that list sorted ascending
    e.g
    Input: ( [2, 3, 4, 5, 6, 20, 16, 13, 47, 32, 100, 15, 8], 4 )
    Output: [4, 8, 16, 20, 32, 100]

17. Write a function that gets a list of integers and an integer as parameter and returns the list
    with all the divisors of that number from that list sorted descending
    e.g
    Input: ( [2, 3, 4, 5, 6, 20, 16, 13, 47, 32, 100, 15, 8, 128], 64 )
    Output: [32, 8, 4, 2]

18. Write a function that gets a list of pairs of names and phone numbers, and a list of names as
    parameters and then returns a list of nicely formatted strings that contains the name and the
    phone number (if exists) for each name in the second list.
    - Create 2 versions for it, one with [arrays/lists](https://dart.dev/language/collections#lists)
      the other with [map/dictionary](https://dart.dev/language/collections#maps)
    - Which one is faster and why?
    - In dart language the concept of Pair can be found
      as [MapEntry](https://api.dart.dev/stable/3.0.6/dart-core/MapEntry-class.html) or can be
      manually implemented

    e.g
    Input: ( [Pair("ION", "07412772323"), Pair("Daniel Pare", "074127424232"), Pair("Cares Mutesr Per", "07413272123")], ["Cares Mutesr Per", "Dan", "Daniel", "ION", "Mircea"] )
    Output: ["Number of Cares Mutesr Per is 07413272123", "There is no phone number for Dan", "There is no phone number for Daniel", "Phone number of ION is 07412772323", "There is no phone number for Mircea"]

## 3. Combine functions(a new file where you should reuse functions from 2nd point or create extra functions if there is need to)

1. Write a function that transforms Celsius degrees to Fahrenheit or Fahrenheit degrees to Celsius
   based on selection. [Use [ENUM](https://dart.dev/language/enums) for degree type]
   e.g
   Input: 25 Celsius
   Output: 74.4 //Fahrenheit
   e.g
   Input: 74.4 Fahrenheit
   Output: 25 //Celsius

2. Write a function to check if two given non-negative integers have the same first digit.
   e.g
   Input: 1234, 234
   Output: no
   e.g
   Input: 23, 2345
   Output: yes

3. Write a function in Dart to count how many numbers from a given array have the first digit equal
   with a given one.
   e.g
   Input: [23, 4213, 5464356453, 123, 53, 74, 0, 5, 5, 255, 599], 5
   Output: 5

4. Write a function in Dart to display the pattern like a right angle triangle with a number.First
   line is the sum of the first element. Second line is the sum of the first 2 elements. Third line
   is the sum of the first 3 elements and so on…
   e.g
   Input: 4
   Output:
   1
   1+2 =\> 3
   1+2+3 =\> 6
   1+2+3+4 =\> 10

5. Write a function in Dart to display a pattern like a right angle triangle with n lines based on
   Fibonacci sequence.First line is 1. Second line is 1 1. Third line is 1 1 2 and so on…
   e.g
   Input: 5
   Output: 3
   1
   1 1
   1 1 2
   1 1 2 3
   1 1 2 3 5

## 4. Optional params

1. Write a function that gets two real numbers as parameter and returns the division of the numbers.
   If the division is not possible return null
2. Write a function that gets the age of a user as parameter and the required age and then returns
   true if the user's age is greater than the required age or false otherwise. \* user's age can be
   null