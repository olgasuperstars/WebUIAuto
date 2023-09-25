Feature: User story 2 and 7
  Scenario: Log in as administrator
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title as "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
    Then I wait for 2 sec
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for 2 sec
    Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
    Then I wait for 2 sec
         #make a new appointments
    Then I click on element with xpath "//button[@id='radix-:r6:-trigger-appointments']"
    Then I click on element with xpath "//button[contains(text(),'Add appointment')]"
    Then I wait for element with xpath "//span[contains(text(),'New appointment')]" to be present
    Then I type "Oksana" into element with xpath "//input[@id='user_name']"
    Then I type "Pain" into element with xpath "//textarea[@id='note']"
    Then I click on element with xpath "//select[@name='employee_id']"
    Then I wait for 2 sec
    Then I click on element with xpath "//option[@value='4f5d39a9-9c31-4a27-bbc2-2e1feb5979e8']"
    Then I wait for 2 sec
    And I type "09/08/2023" into element with xpath "//input[@id='date']"
    And I click on element with xpath "//button[contains(text(),'09:30 AM')]"
    Then I wait for 2 sec
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then I wait for 10 sec







  

    