import 'dart:math';

int calculateDifference(int number) {
  int absoluteDifference = (number > 17) ? (number - 17).abs() : (17 - number);
  return absoluteDifference;
}

void main() {
  int givenNumber = 20; // Replace with your desired number

  int difference = calculateDifference(givenNumber);

  print('The difference between $givenNumber and 17 is: $difference');
}

