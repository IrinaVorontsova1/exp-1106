package support;

//public class MakeClass {
//    public static void main(String[] args) {
//        Rectangle rect1 = new Rectangle(100, 50);
////        rect1.width = 100;
////        rect1.height = 50;
//        System.out.println("Rect1 perimetr: " + rect1.getPerimetr());
//        System.out.println("Rect1 area: " + rect1.getArea());
//
//        Rectangle rect2 = new Rectangle(10, 30);
////        rect2.width = 10;
////        rect2.height = 30;
//        System.out.println("Rect2 perimetr: " + rect2.getPerimetr());
//        System.out.println("Rect2 area: " + rect2.getArea());
//    }
//}
//
//
//class Rectangle {
//    public double width;
//    public double height;
//
//    public Rectangle(double width, double height) {
//        this.height = height;
//        this.width = width;
//
//    }
//
//    public double getArea() {
//        return width * height;
//
//    }
//
//    public double getPerimetr() {
//        return 2 * (width + height);
//    }


    ///////////// CAR //////////////


public class MakeClass {
    public static void main(String[] args) {
        Supercar sp = new Supercar();
        sp.drive(80);
        sp.fuelUp();
        sp.drive(50);
        System.out.println("Fuel level is: " + sp.fuelLevel);
    }
}

class Supercar {
    public int fuelLevel = 100;
    public int distance = 0;

    public void drive(int miles) {
        if ((fuelLevel - miles) < 0) {
            System.out.println("Not enogh fuel. Need to refuel.");
            return;
        } else {
            this.distance = this.distance + miles;
            this.fuelLevel = this.fuelLevel - miles;
        }
    }

    public void fuelUp() {
        this.fuelLevel = 100;
    }
}
