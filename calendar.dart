import 'package:intl/intl.dart';

void main() {
  // Prompt the user for the month and year
  print("Enter the month (1-12): ");
  int month = int.parse(stdin.readLineSync() ?? '');
  print("Enter the year: ");
  int year = int.parse(stdin.readLineSync() ?? '');

  // Create a DateTime object for the first day of the specified month and year
  DateTime date = DateTime(year, month, 1);

  // Print the header with the month and year
  print(DateFormat('MMMM yyyy').format(date));
  print("Su Mo Tu We Th Fr Sa");

  // Calculate the day of the week for the first day of the month (0-6, where 0 is Sunday)
  int startDay = date.weekday;

  // Calculate the number of days in the specified month
  int daysInMonth = DateTime(year, month + 1, 0).day;

  // Initialize variables for formatting the calendar
  int day = 1;
  int currentDayOfWeek = 0;

  // Print the calendar
  for (int week = 0; week < 6; week++) {
    for (int dow = 0; dow < 7; dow++) {
      if (week == 0 && dow < startDay) {
        // Print empty spaces before the first day of the month
        stdout.write("   ");
        currentDayOfWeek++;
      } else if (day <= daysInMonth) {
        // Print the current day
        stdout.write("${day.toString().padLeft(2)} ");
        day++;
        currentDayOfWeek++;
      }

      // Newline after Saturday
      if (currentDayOfWeek == 7) {
        print("");
        currentDayOfWeek = 0;
      }
    }

    // Break if all days in the month have been printed
    if (day > daysInMonth) {
      break;
    }
  }
}
