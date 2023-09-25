package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import io.cucumber.java.Scenario;

import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.assertThat;

public class ShamilKStepDefs {
    @Given("SK launch {string}")
    public void skLaunch(String sAppVersion) {
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

    @Then("SK page title is {string}")
    public void skPageTitleIs(String sTitleName) {
        assertThat(getDriver().getTitle()).contains(sTitleName);
    }

    @Given("SK In {string} env Login as an administrator to the application and start from home page")
    public void admin_preconditions(String envVersion) throws InterruptedException {
        getDriver().get("https://medicenter-" + envVersion + ".vercel.app/");
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//button[contains(text(),'Login')]")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//input[@id='email']")).sendKeys("administrator1@gmail.com");
        getDriver().findElement(By.xpath("//input[@id='password']")).sendKeys("abc123");
        getDriver().findElement(By.xpath("//button[contains(text(),'Sign in')]")).click();
        Thread.sleep(2000);
    }

    @Then("SK The {string} element found by xpath should be present")
    public void theElementFoundByXpathShouldBePresent(String xpath) {
        assertThat(getDriver().findElements(By.xpath(xpath))).hasSize(1);
    }

    @Then("SK Click on {string} element found by xpath")
    public void skClickOnElementFoundByXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @Then("SK I type {string} into {string} element found by xpath")
    public void iTypeIntoElementFoundByXpath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }

    @Then("SK I select {string} element by xpath")
    public void skISelectElementByXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @Then("SK I click on {string} element by xpath")
    public void skIClickOnElementByXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).click();
    }


    @Then("SK I verify the {string}'s appointment data by xpath")
    public void skIVerifyTheAppointmentWithData(String user_name) {
        assertThat(getDriver().findElements(By.xpath("//td[@data-date='2023-09-11']//div[text()='"+ user_name + "']"))).hasSize(1);
    }

    @And("SK I delete the {string}'s appointment")
    public void skIDeleteTheAppointment(String user_name) throws InterruptedException {
        getDriver().findElement(By.xpath("//td[@data-date='2023-09-11']//div[text()='" + user_name + "']/parent::a")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//button[contains(text(), 'Cancel appointment')]")).click();
    }

    @Given("SK Open {string} env home page")
    public void skOpenEnvHomePage(String envVersion) {
        getDriver().get("https://medicenter-" + envVersion + ".vercel.app/");
    }

    @Given("SK In {string} env Login as a patient to the application and start from home page")
    public void patient_preconditions(String envVersion) throws InterruptedException {
        getDriver().get("https://medicenter-" + envVersion + ".vercel.app/");
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//button[contains(text(),'Login')]")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//input[@id='email']")).sendKeys("patient1@gmail.com");
        getDriver().findElement(By.xpath("//input[@id='password']")).sendKeys("abc123");
        getDriver().findElement(By.xpath("//button[contains(text(),'Sign in')]")).click();
        Thread.sleep(2000);
    }

    @And("SK Verify that title name should be {string}")
    public void skVerifyTitleName(String title) {
        assertThat(getDriver().getTitle()).isEqualTo(title);
    }

    @Then("SK I verify that {string}'s appointment data by xpath should not be present")
    public void skIVerifyThatPatientNameSAppointmentDataByXpathShouldNotBePresent(String user_name) {
        assertThat(getDriver().findElements(By.xpath("//td[@data-date='2023-09-11']//div[text()='"+ user_name + "']"))).hasSize(0);
    }

    @Then("SK If present I click on {string} element by xpath")
    public void skIfPresentIClickOnElementByXpath(String xpath) {
        java.util.List<WebElement> element = getDriver().findElements(By.xpath(xpath));
        if (element.isEmpty()) {
            System.out.println("Their is not such element");
        } else {
            getDriver().findElement(By.xpath(xpath)).click();
        }
    }
}


