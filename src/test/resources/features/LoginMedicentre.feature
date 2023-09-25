# Author Olga Soloveva

@macenter
Feature: MedicalAppCenter Test Scenarios
  
  @macenter1
  Scenario: Login as a patient
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title contains "Medi"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
      # land on Login page
    Then I type "yna2106@mrshok.xyz" into element with xpath "//input[@id='email']"
    Then I type "123456" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    #verification that "Medical Center" is displayed on the page
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    #verification that user's name exist on the page
    Then I wait for element with xpath "//h1[contains(text(),'Olga Test1')]" to be present
    Then element with xpath "//h1[contains(text(),'Olga Test1')]" should contain text "Olga Test1"

  @macenter2
  Scenario Outline: Login as a patient parametrised
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title contains "Medi"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
    Then I type <loginEmail> into element with xpath "//input[@id='email']"
    Then I type <password> into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I wait for element with xpath <xpath6> to be present
    Then element with xpath <xpath6> should contain text <userName>
    Examples:
      | loginEmail           | password        |  userName       | xpath6                                   |
      | "patient1@gmail.com" | "abc123"        | "James Johnson" | "//h1[contains(text(),'James Johnson')]" |
      | "patient2@gmail.com" | "abc123"        | "Ben Simpson"   | "//h1[contains(text(),'Ben Simpson')]"   |
      | "yna2106@mrshok.xyz" | "123456"        | "Olga Test1"    | "//h1[contains(text(),'Olga Test1')]"    |
      | "yna2106@mrshok.xyz" | "123456"        | "Wrong Text"    | "//h1[contains(text(),'Olga Test1')]"    |
      | "wrongEmail@com.com" | "123456"        | "Olga Test1"    | "//h1[contains(text(),'Olga Test1')]"    |
      | "yna2106@mrshok.xyz" | "wrongPassword" | "Olga Test1"    | "//h1[contains(text(),'Olga Test1')]"    |

