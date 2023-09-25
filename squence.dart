import 'dart:io';

void main() {
  // Accept a sequence of comma-separated numbers from the user
  stdout.write("Enter comma-separated numbers: ");
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    // Split the input string into a list of strings
    List<String> numberStrings = input.split(',');

    // Create a list of integers
    List<int> numbers = [];

    // Convert and add valid numbers to the list
    for (var numberString in numberStrings) {
      int? number = int.tryParse(numberString.trim());
      if (number != null) {
        numbers.add(number);
      }
    }

    // Display the list
    print("List: $numbers");
  } else {
    print("Invalid input. Please enter a sequence of comma-separated numbers.");
  }
}


