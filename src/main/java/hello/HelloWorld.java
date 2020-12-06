package hello;

import java.util.Date;

public class HelloWorld {
    public static void main(String[] args) {
      Date dateTime = new Date();
      System.out.println("The current local dateTime is: " + dateTime);

        Greeter greeter = new Greeter();
        System.out.println(greeter.sayHello());
    }

    //TODO implement addition of two numbers
}
