//write adart program that accepts the radius from the user and computes
 //its area
 //write adart program that accepts asequence of comma separated numbers from 
 //the user and generates alist and tuple from those numbers
 //write adart program to print the calendar of agiven month and year
 //write adart program to get the difference btn agiven number and 17.
 //if the number > return double absolute difference

 
 import 'dart:io';
import 'dart:math';

void main() {
  // Accept the radius from the user
  stdout.write("Enter the radius of the circle: ");
  String? radiusInput = stdin.readLineSync();
  
  // Parse the radius as a double
  double? radius = double.tryParse(radiusInput ?? '');

  if (radius != null && radius > 0) {
    // Calculate the area of the circle
    double area = calculateArea(radius);

    // Display the result
    print("The area of the circle with radius $radius is: $area");
  } else {
    print("Invalid input. Please enter a valid positive number for the radius.");
  }
}

double calculateArea(double radius) {
  return pi * radius * radius;
}
