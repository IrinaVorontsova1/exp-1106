package support;

import java.util.Scanner;

public class InputTests {
    public static void main(String[] args) {
//        Scanner scanner = new Scanner(System.in);
//        System.out.println("Input your string: ");
//        String myString = scanner.nextLine();
//        System.out.println("Your string was: " + myString);

        Scanner scanner = new Scanner(System.in);
        System.out.println("Type operand 1: ");
        String op1 = scanner.nextLine();
        System.out.println("Type operation (+, -, *, /): ");
        String operation = scanner.nextLine();
        System.out.println("Type operand 2: ");
        String op2 = scanner.nextLine();

        double result = 0;

        if (operation.equals("/") && op2.equals("0")){
            System.out.println("Error: Division by zero is not allowed.");
        } else {
            result = calculate(op1, op2, operation);
        }

        printResult(result);
    }

    static double calculate(String op1, String op2, String operation) {
        double result = 0;
        switch (operation) {
            case "+":
                result = Double.parseDouble(op1) + Double.parseDouble(op2);
                break;
            case "-":
                result = Double.parseDouble(op1) - Double.parseDouble(op2);
                break;
            case "*":
                result = Double.parseDouble(op1) * Double.parseDouble(op2);
                break;
            case "/":
                result = Double.parseDouble(op1) / Double.parseDouble(op2);
//                if (Double.parseDouble(op2) != 0) {
//                    result = Double.parseDouble(op1) / Double.parseDouble(op2);
//                } else {
//                  System.out.println("Error: Division by zero is not allowed.");
//                }
                break;
            default:
                System.out.println("Invalid operation");
        }
        return result;
    }

    static void printResult(double result) {
        System.out.println("The result: " + result);
    }
}
