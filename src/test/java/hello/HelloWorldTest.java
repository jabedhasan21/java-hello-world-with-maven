package hello;

import org.junit.Test;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import static org.junit.Assert.assertTrue;

public class HelloWorldTest {

    @Test
    public void mainMethodRunsWithoutException() {
        HelloWorld.main(new String[]{});
    }

    @Test
    public void mainMethodOutputsSomething() {
        ByteArrayOutputStream outContent = new ByteArrayOutputStream();
        System.setOut(new PrintStream(outContent));
        
        HelloWorld.main(new String[]{});
        
        String output = outContent.toString();
        assertTrue(output.contains("The current local time is"));
        assertTrue(output.contains("DevOps Project"));
        
        System.setOut(System.out);
    }
}
