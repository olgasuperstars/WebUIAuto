package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class TatianaZStepdefs {
    @Given("TZ open {string} page")
    public void tzOpenPage(String sAppVersion) {
        switch(sAppVersion) {
            case "MedicenterV1":
                getDriver().get("https://medicenter-qa1.vercel.app/");
                break;
            case "MedicenterV2":
                getDriver().get("https://medicenter-qa2.vercel.app/");
                break;
            default:
                System.out.println("URL not found");

        }
    }

    @Then("TZ login as administrator")
    public void tzLoginAsAdministrator() throws Throwable {
        getDriver().get("https://medicenter-qa2.vercel.app/");
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//button[contains(text(),'Login')]")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//input[@id='email']")).sendKeys("taraborova@n2snow.com");
        getDriver().findElement(By.xpath("//input[@id='password']")).sendKeys("1234567");
        getDriver().findElement(By.xpath("//button[contains(text(),'Sign in')]")).click();
        Thread.sleep(2000);
    }

    @And("TZ refresh the page")
    public void tzRefreshThePage() throws Throwable {
        getDriver().navigate().refresh();;
    }
}
