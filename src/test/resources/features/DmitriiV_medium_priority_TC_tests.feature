#Author: Dmitrii V
#@minorUserStory4_9


Feature: User Story 4 and 9 medium

  Scenario Outline: Specialist First Name text field boundary testing
    Given DV launch "<sAppVersion>"
    Then DV page title is "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type <userName> into element with xpath "//input[@id='email']"
    Then I type <password> into element with xpath " //input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//td[contains(text(),'Strange')]/../td[3]/div/span[1]" to be present
    Then I click on element with xpath "//td[contains(text(),'Strange')]/../td[3]/div/span[1]"
    And I wait for element with xpath "//button[contains(text(),'Save')]" to be present
    Then I clear element with xpath "//input[@id='first_name']"
    Then I type <text2> into element with xpath "//input[@id='first_name']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then DV refresh page
    And I wait for element with xpath "//td[contains(text(),'Strange')]/../td[3]/div/span[1]" to be present
    Then DV confirm changes xpath "//td[contains(text(),'Strange')]" contains <text2>
    Examples:
      | sAppVersion    | userName                   | password  | text2  |
      | MedicenterV1   | "administrator1@gmail.com" | "abc123"  |  "D"   |
      | MedicenterV2   | "administrator1@gmail.com" | "abc123"  |  "D"   |
      | MedicenterV1   | "administrator1@gmail.com" | "abc123"  |  "n31ztfawkPAxrHW1Xs9He5kxMlVUmtIujY2I4db4tfjxILUluHI3k103kbM5xjjDFxHfjcm6JND2aVaDeBXLowYxTL1qJlHDDp"   |
      | MedicenterV2   | "administrator1@gmail.com" | "abc123"  |  "n31ztfawkPAxrHW1Xs9He5kxMlVUmtIujY2I4db4tfjxILUluHI3k103kbM5xjjDFxHfjcm6JND2aVaDeBXLowYxTL1qJlHDDp"   |
      | MedicenterV1   | "administrator1@gmail.com" | "abc123"  |  "Dn31ztfawkPAxrHW1Xs9He5kxMlVUmtIujY2I4db4tfjxILUluHI3k103kbM5xjjDFxHfjcm6JND2aVaDeBXLowYxTL1qJlHDDp"   |
      | MedicenterV2   | "administrator1@gmail.com" | "abc123"  |  "Dn31ztfawkPAxrHW1Xs9He5kxMlVUmtIujY2I4db4tfjxILUluHI3k103kbM5xjjDFxHfjcm6JND2aVaDeBXLowYxTL1qJlHDDp"   |
      | MedicenterV1   | "administrator1@gmail.com" | "abc123"  |  "Dr"   |
      | MedicenterV2   | "administrator1@gmail.com" | "abc123"  |  "Dr"   |

