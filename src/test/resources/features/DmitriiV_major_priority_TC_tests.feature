#Author: Dmitrii V
#@majorUserStory4_9

Feature: User Story 4 and 9

  Scenario: Specialist Last name text field can't be edited when First name text field is empty
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath " //input[@id='email']"
    Then I type "abc123" into element with xpath " //input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span" to be present
    Then I click on element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span"
    And I wait for element with xpath "//button[contains(text(),'Save')]" to be present
    Then element with xpath "//span[contains(text(),'Edit specialist info')]" should be present
    Then I clear element with xpath "//input[@id='last_name']"
    Then I type "S" into element with xpath "//input[@id='last_name']"
    Then I clear element with xpath "//input[@id='first_name']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then element with xpath "//span[contains(text(),'Edit specialist info')]" should be present

  Scenario: Specialist First name text field can't be edited when Last name text field is empty
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath " //input[@id='email']"
    Then I type "abc123" into element with xpath " //input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span" to be present
    Then I click on element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span"
    And I wait for element with xpath "//button[contains(text(),'Save')]" to be present
    Then element with xpath "//span[contains(text(),'Edit specialist info')]" should be present
    Then I clear element with xpath "//input[@id='first_name']"
    Then I type "D" into element with xpath "//input[@id='first_name']"
    Then I clear element with xpath "//input[@id='last_name']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then element with xpath "//span[contains(text(),'Edit specialist info')]" should be present

  Scenario: Specialist Last name text field can't be edited to empty
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath " //input[@id='email']"
    Then I type "abc123" into element with xpath " //input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span" to be present
    Then I click on element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span"
    And I wait for element with xpath "//button[contains(text(),'Save')]" to be present
    Then element with xpath "//span[contains(text(),'Edit specialist info')]" should be present
    Then I clear element with xpath "//input[@id='last_name']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then element with xpath "//span[contains(text(),'Edit specialist info')]" should be present

  Scenario: Specialist First name text field can't be edited to empty
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath " //input[@id='email']"
    Then I type "abc123" into element with xpath " //input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span" to be present
    Then I click on element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span"
    And I wait for element with xpath "//button[contains(text(),'Save')]" to be present
    Then element with xpath "//span[contains(text(),'Edit specialist info')]" should be present
    Then I clear element with xpath "//input[@id='first_name']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then element with xpath "//span[contains(text(),'Edit specialist info')]" should be present

  Scenario: Specialist Working day edit
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath " //input[@id='email']"
    Then I type "abc123" into element with xpath " //input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span" to be present
    Then I click on element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span"
    And I wait for element with xpath "//button[contains(text(),'Save')]" to be present
    Then I click on element with xpath "//button[@id='monday']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then I open url "https://medicenter-qa2.vercel.app/"
    And I wait for element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span" to be present
    Then I click on element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span"
    And I wait for element with xpath "//button[contains(text(),'Save')]" to be present
    Then element with xpath "//button[@id='monday']" should have attribute "data-state" as "unchecked"

  Scenario: Edit specialist Working "from" hours
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath " //input[@id='email']"
    Then I type "abc123" into element with xpath " //input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span" to be present
    Then I click on element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span"
    And I wait for element with xpath "//button[contains(text(),'Save')]" to be present
    Then I clear element with xpath "//input[@id='working_hours.monday.from']"
    Then I type "10:00" into element with xpath "//input[@id='working_hours.monday.from']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then I open url "https://medicenter-qa2.vercel.app/"
    And I wait for element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span" to be present
    Then I click on element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span"
    And I wait for element with xpath "//button[contains(text(),'Save')]" to be present
    Then element with xpath "//input[@id='working_hours.monday.from']" should have attribute "value" as "10:00"

  Scenario: Edit specialist Working "to" hours
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath " //input[@id='email']"
    Then I type "abc123" into element with xpath " //input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span" to be present
    Then I click on element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span"
    And I wait for element with xpath "//button[contains(text(),'Save')]" to be present
    Then I clear element with xpath "//input[@id='working_hours.monday.to']"
    Then I type "18:00" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then I open url "https://medicenter-qa2.vercel.app/"
    And I wait for element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span" to be present
    Then I click on element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span"
    And I wait for element with xpath "//button[contains(text(),'Save')]" to be present
    Then element with xpath "//input[@id='working_hours.monday.to']" should have attribute "value" as "18:00"


  Scenario: Edit specialist speciality
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath " //input[@id='email']"
    Then I type "abc123" into element with xpath " //input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span" to be present
    Then I click on element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span"
    And I wait for element with xpath "//button[contains(text(),'Save')]" to be present
    Then I click on element with xpath "//option[contains(text(),'Neurologist')]"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then I open url "https://medicenter-qa2.vercel.app/"
    And I wait for element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span" to be present
    Then element with xpath "//td[contains(text(),'Dr Strange')]/../td[2]/span" should contain text "Neurologist"

  Scenario: Edit specialist Last name
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath " //input[@id='email']"
    Then I type "abc123" into element with xpath " //input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span" to be present
    Then I click on element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span"
    And I wait for element with xpath "//button[contains(text(),'Save')]" to be present
    Then I clear element with xpath "//input[@id='last_name']"
    Then I type "Watson" into element with xpath "//input[@id='last_name']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then I open url "https://medicenter-qa2.vercel.app/"
    Then I wait for 1 sec
    Then element with xpath "//td[contains(text(),'Dr Watson')]" should be present

  Scenario: Edit specialist First name
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath " //input[@id='email']"
    Then I type "abc123" into element with xpath " //input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span" to be present
    Then I click on element with xpath "//td[contains(text(),'Dr Strange')]/../td[3]/div/span"
    And I wait for element with xpath "//button[contains(text(),'Save')]" to be present
    Then I clear element with xpath "//input[@id='first_name']"
    Then I type "Doctor" into element with xpath "//input[@id='first_name']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then I open url "https://medicenter-qa2.vercel.app/"
    Then I wait for 1 sec
    Then element with xpath "//td[contains(text(),'Doctor Strange')]" should be present



  #@minorUserStory9
    #
#Feature User Story 9
  Scenario:
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath " //input[@id='email']"
    Then I type "abc123" into element with xpath " //input[@id='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//h1[@class='font-medium text-xl']" to be present
    And I wait for 1 sec
    Then element with xpath "//h1[@class='font-medium text-xl']" should contain text "Mary Poppins"
    Then I click on element with xpath "//button[@id='radix-:r6:-trigger-appointments']"
    Then I click on element with xpath "//button[@type='button' and @title='month view']"
    Then element with xpath "//td[@data-date='2023-08-11']//div[@class='fc-event-time' and contains(text(),'6:45')]" should be present