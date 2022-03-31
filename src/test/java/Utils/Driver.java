package Utils;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class Driver {

    /**
     *      Why we are creating driver class? (Singleton Driver)
     *
     *          Because we need to use one driver for every class in our project
     *          (page classes, step definitions)
     *
     *          This concept called "Singleton Driver"
     *
     */

    private static WebDriver driver;

    public static WebDriver getDriver() {
        //if the driver object is equal to null, then create a new driver instance
        if (driver == null) {
            WebDriverManager.chromedriver().setup();
            driver = new ChromeDriver();
        }
        return driver;
    }

    public static void quitDriver() {
        if (driver != null) {
            driver.quit();
            driver = null; // if we don't have this line, next scenario will fail
        }
    }
}
