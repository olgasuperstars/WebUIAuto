package definitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class DmitriiVStepDefs {
    @Given("DV launch {string}")
    public void dvLaunch(String sAppVersion) {
        switch (sAppVersion) {
            case "MedicenterV1":
                getDriver().get("https://medicenter-qa1.vercel.app/");
                break;
            case "MedicenterV2":
                getDriver().get("https://medicenter-qa2.vercel.app/");
                break;
            default:
                System.out.println("No URL found");
        }
    }

    @Then("DV page title is {string}")
    public void dvPageTitleIs(String sPageName) {
        assertThat(getDriver().getTitle()).contains(sPageName);
    }

    @Then("DV refresh page")
    public void dvRefreshPage() {
        getDriver().navigate().refresh();
    }

    @Then("DV confirm changes xpath {string} contains {string}")
    public void dvConfirmChangesXpathContains(String sFiesdXpath, String sFirstName) {
        assertThat(getDriver().findElement(By.xpath(sFiesdXpath)).getText()).contains(sFirstName);
    }
}
