package org.example;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.concurrent.TimeUnit;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {

        WebDriverManager.chromedriver().setup();
        ChromeOptions options = new ChromeOptions();
        options.addArguments("start-maximized"); // открытие поллноэкранного формата
        options.addArguments("--incognito"); // открытие страницы в режиме инкогнито
        options.addArguments("disable-popup-blocking"); // блокировка всплывающих окн


        WebDriver driver = new ChromeDriver(options);
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
        driver.get("https://www.gismeteo.kz/");
        driver.findElement(By.xpath("/html/body/section/div[1]/section[1]/div[2]/div[2]/a[1]/div[2]/span")).click();
//        new WebDriverWait(driver, 5).until(ExpectedConditions.visibilityOf(webElement)));

//        driver.quit(); // закроект вообще все
//        driver.close(); // закроет текущее окно
    }
}
