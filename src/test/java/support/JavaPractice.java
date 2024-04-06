package support;

public class JavaPractice {
    public static void main(String[] args) {
        //sout
        System.out.println("Hello world!");
        System.out.print("Hello Irina");
        System.out.print(100000);
        System.out.println("n10\n2\nHI");

        String label = "The result: ";
//        int x = 10;
//        int y = 7;
        System.out.println(label + (x() + y()));
        printResult( 5,6);

//        Car car = new Car();
//        System.out.println(car.color);
//        System.out.println(Car.model);
    }

    static int x() {
        return 10;
    }
    static int y(){
        return 7;
    }

    static void printResult(int x, int y) {
        System.out.println(x + y);
    }
}

//class Car {
//    public String color = "red";
//    public static String model = "Tesla";

//}