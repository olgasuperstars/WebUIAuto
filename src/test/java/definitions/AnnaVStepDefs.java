package definitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class AnnaVStepDefs {
    @Given("AV launch {string}")
    public void avLaunch(String sAppVersion) {
        switch (sAppVersion) {
            case "MedicenterV1":
                getDriver().get(XpathLibrary.sMedicenter1URL);
                break;
            case "MedicenterV2":
                getDriver().get(XpathLibrary.sMedicenter2URL);
                break;
            default:
                System.out.println("No URL found");
        }
    }

    @Then("AV page title is {string}")
    public void avPageTitleIs(String sPageName) {
        assertThat(getDriver().getTitle()).contains(sPageName);
    }

    @Then("AV click on {string} button")
    public void avClickOnButton(String sButton) {
        switch (sButton){
            case "Login": getDriver().findElement(By.xpath(XpathLibrary.sLoginButton)).click();
                            break;
            default:
                System.out.println("No button found");
        }
    }
}
