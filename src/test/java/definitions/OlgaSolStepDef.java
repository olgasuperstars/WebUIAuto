package definitions;

import com.github.dockerjava.api.command.CreateNetworkCmd;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class OlgaSolStepDef {
    @Given("OS open url {string}")
    public void osOpemUrl(String oMediVersion) {
        switch (oMediVersion) {
            case "MedicenterV1":
                getDriver().get(OlgaSolXpathLibrary.oMedicenter1URL);
                break;
            case "MedicenterV2":
                getDriver().get(OlgaSolXpathLibrary.oMedicenter2URL);
                break;
            default:
                System.out.println("No URL found");
        }
    }

    @Then("OS see page title contains {string}")
    public void osSeePageTitleContains(String oTitle) {
        assertThat(getDriver().getTitle()).contains(oTitle);

    }

    @Then("OS click on elememt with xpath {string}")
    public void osClickOnElememtWithXpath(String oLogin) {
        getDriver().findElement(By.xpath(OlgaSolXpathLibrary.oLoginButton)).click();
    }

    @Then("OS wait for element with xpath {string} to be present")
    public void osWaitForElementWithXpathToBePresent(String oBackHome) {
        getDriver().findElement(By.xpath(oBackHome));
    }

    @Then("OS type {string} into element with xpath {string}")
    public void osTypeIntoElementWithXpath(String userLoginData, String loginField) {
        getDriver().findElement(By.xpath(loginField)).sendKeys(userLoginData);

    }

    @Then("OS click on element with xpath {string}")
    public void osClickOnElementWithXpath(String oSignIn) {
        getDriver().findElement(By.xpath(oSignIn)).click();

    }
}
