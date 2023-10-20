package hello;

import org.joda.time.LocalTime;

public class Greeter {
    public String sayHello() {
        LocalTime currentTime = new LocalTime();
        return "The current local time is: " + currentTime;
    }
}
