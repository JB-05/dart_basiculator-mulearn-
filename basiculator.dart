/// A simple calculator program that performs basic arithmetic and comparison operations
import 'dart:io';

void main() {
  print('Welcome to Basiculator!');
  print(
      'This program can perform addition, subtraction, multiplication, division, and comparisons between two numbers.');
  bool continueCalculating = true;

  while (continueCalculating) {
    printMenu();
    // Get user's choice
    stdout.write('Enter your choice (1-7): ');
    int? choice = int.tryParse(stdin.readLineSync()!);

    // Exit if user chooses to exit
    if (choice == 7) {
      print('\nThank you for using Basiculator! Bye!');
      break;
    } else if (choice == null || choice > 7 || choice < 1) {
      print('\nInvalid choice! Please try again.');
      continue;
    }

    // Get input numbers
    stdout.write('\nEnter first number: ');
    double num1 = double.parse(stdin.readLineSync()!);
    stdout.write('Enter second number: ');
    double num2 = double.parse(stdin.readLineSync()!);

    // Process the operation based on user choice
    switch (choice) {
      case 1:
        performAddition(num1, num2);
        break;
      case 2:
        performSubtraction(num1, num2);
        break;
      case 3:
        performMultiplication(num1, num2);
        break;
      case 4:
        performDivision(num1, num2);
        break;
      case 5:
        compareNumbers(num1, num2);
        break;
      case 6:
        findMaximum(num1, num2);
        break;
      default:
        print('\nInvalid choice! Please try again.');
    }

    // Infinite loop to ask if the user wants to continue
    stdout.write('\nDo you want to perform another calculation? (y/n): ');
    String? answer = stdin.readLineSync();
    continueCalculating = answer?.toLowerCase() == 'y';
    print('\n' + '-' * 80);
  }
}

// Displays the main menu of operations
void printMenu() {
  print('\n\t\t BASICULATOR MENU ');
  print('\t1. Addition');
  print('\t2. Subtraction');
  print('\t3. Multiplication');
  print('\t4. Division');
  print('\t5. Compare Numbers');
  print('\t6. Find Maximum');
  print('\t7. Exit');
  print('-' * 80 + '\n');
}

/// Performs addition
void performAddition(double num1, double num2) {
  double result = num1 + num2;
  print('\n$num1 + $num2 = $result');
}

/// Performs subtraction
void performSubtraction(double num1, double num2) {
  double result = num1 - num2;
  print('\n$num1 - $num2 = $result');
}

/// Performs multiplication
void performMultiplication(double num1, double num2) {
  double result = num1 * num2;
  print('\n$num1 × $num2 = $result');
}

/// Performs division
void performDivision(double num1, double num2) {
  if (num2 == 0) {
    print('\nError: Cannot divide by zero!');
    return;
  }
  double result = num1 / num2;
  print('\n$num1 ÷ $num2 = $result');
}

/// Compares two numbers
void compareNumbers(double num1, double num2) {
  if (num1 > num2) {
    print('\n$num1 is greater than $num2');
  } else if (num1 < num2) {
    print('\n$num1 is less than $num2');
  } else {
    print('\n$num1 is equal to $num2');
  }
}

/// Finds and displays the maximum
void findMaximum(double num1, double num2) {
  double max = num1 > num2 ? num1 : num2;
  print('\nThe maximum number is: $max');
}
