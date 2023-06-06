package org.example;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

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
        driver.get("https://kundelik.kz/");
    }
}
