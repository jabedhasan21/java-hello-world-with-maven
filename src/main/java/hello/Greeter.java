package hello;

import org.joda.time.LocalDate;
import org.joda.time.LocalTime;

public class Greeter {
    public String sayDate() {
        LocalDate currentDate = new LocalDate();
        return "The current local date is: " + currentDate;
    }

    public String sayTime() {
        LocalTime currentTime = new LocalTime();
        return "The current local time is: " + currentTime;
    }
}

