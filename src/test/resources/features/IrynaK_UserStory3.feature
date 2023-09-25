# Author: Iryna K

@userstory3
Feature: Test scenarios for User Story 3

  @userstory3.1
  Scenario: Adding new specialist with valid credentials
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then  I should see page title contains "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    And I wait for 2 sec
    Then element with xpath "//h1[@class='font-medium text-xl']" should be present
    Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
    #open popup window
    And element with xpath "//span[contains(text(),'New specialist')]" should be present
    Then I type "Karl" into element with xpath "//input[@id='first_name']"
    Then I type "Marx" into element with xpath "//input[@id='last_name']"
    Then I click on element with xpath "//option[contains(text(),'Ophthalmologist')]"
    Then I type "09:00" into element with xpath "//input[@id='working_hours.tuesday.from']"
    Then I type "12:00" into element with xpath "//input[@id='working_hours.tuesday.to']"
    And I type "13:00" into element with xpath "//input[@id='working_hours.thursday.from']"
    And I type "16:00" into element with xpath "//input[@id='working_hours.thursday.to']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then I open url "https://medicenter-qa2.vercel.app/"
    And I wait for 2 sec
    Then element with xpath "//td[contains(text(),'Karl Marx')]" should be present

  @userstory3.2
  Scenario: Adding new specialist using alphanumeric and special characters
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then  I should see page title contains "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    And I wait for 2 sec
    Then element with xpath "//h1[@class='font-medium text-xl']" should be present
    Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
    #open popup window
    And element with xpath "//span[contains(text(),'New specialist')]" should be present
    Then I type "ART2&/" into element with xpath "//input[@id='first_name']"
    Then I type "COM%*2" into element with xpath "//input[@id='last_name']"
    Then I click on element with xpath "//option[contains(text(),'Doctor')]"
    Then I type "09:00" into element with xpath "//input[@id='working_hours.monday.from']"
    Then I type "12:00" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then I open url "https://medicenter-qa2.vercel.app/"
    And I wait for 2 sec
    Then element with xpath "//td[contains(text(),'ART2&/ COM%*2')]" should be present

  @userstory3.3
  Scenario: Entering whitespaces in the required First mame field
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then  I should see page title contains "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    And I wait for 2 sec
    Then element with xpath "//h1[@class='font-medium text-xl']" should be present
    Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
    #open popup window
    And element with xpath "//span[contains(text(),'New specialist')]" should be present
    Then I type "  A" into element with xpath "//input[@id='first_name']"
    Then I type "Smith" into element with xpath "//input[@id='last_name']"
    Then I click on element with xpath "//option[contains(text(),'Doctor')]"
    Then I type "09:00" into element with xpath "//input[@id='working_hours.monday.from']"
    Then I type "12:00" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then element with xpath "//span[contains(text(),'New specialist')]" should be present

  @userstory3.4
  Scenario: Entering whitespaces in the required Last mame field
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then  I should see page title contains "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    And I wait for 2 sec
    Then element with xpath "//h1[@class='font-medium text-xl']" should be present
    Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
    #open popup window
    And element with xpath "//span[contains(text(),'New specialist')]" should be present
    Then I type "Adam" into element with xpath "//input[@id='first_name']"
    Then I type "S  " into element with xpath "//input[@id='last_name']"
    Then I click on element with xpath "//option[contains(text(),'Doctor')]"
    Then I type "09:00" into element with xpath "//input[@id='working_hours.monday.from']"
    Then I type "12:00" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then element with xpath "//span[contains(text(),'New specialist')]" should be present

  @userstory3.5
  Scenario: Entering whitespaces in the required fields (First name and Last name)
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then  I should see page title contains "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    And I wait for 2 sec
    Then element with xpath "//h1[@class='font-medium text-xl']" should be present
    Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
    #open popup window
    And element with xpath "//span[contains(text(),'New specialist')]" should be present
    Then I type "  " into element with xpath "//input[@id='first_name']"
    Then I type "  " into element with xpath "//input[@id='last_name']"
    Then I click on element with xpath "//option[contains(text(),'Doctor')]"
    Then I type "09:00" into element with xpath "//input[@id='working_hours.monday.from']"
    Then I type "12:00" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then element with xpath "//span[contains(text(),'New specialist')]" should be present

  @userstory3.6
  Scenario: Adding new specialist with empty required First name field
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then  I should see page title contains "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    And I wait for 2 sec
    Then element with xpath "//h1[@class='font-medium text-xl']" should be present
    Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
    #open popup window
    And element with xpath "//span[contains(text(),'New specialist')]" should be present
    Then I type "Smith" into element with xpath "//input[@id='last_name']"
    Then I click on element with xpath "//option[contains(text(),'Cardiologist')]"
    Then I type "09:00" into element with xpath "//input[@id='working_hours.monday.from']"
    Then I type "12:00" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then element with xpath "//span[contains(text(),'New specialist')]" should be present
    And element with xpath "//input[@id='first_name']" should be enabled
    And I wait for 2 sec

  @userstory3.7
  Scenario: Adding new specialist with empty required Last name field
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then  I should see page title contains "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    And I wait for 2 sec
    Then element with xpath "//h1[@class='font-medium text-xl']" should be present
    Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
    #open popup window
    And element with xpath "//span[contains(text(),'New specialist')]" should be present
    Then I type "Adam" into element with xpath "//input[@id='first_name']"
    Then I click on element with xpath "//option[contains(text(),'Doctor')]"
    Then I type "09:00" into element with xpath "//input[@id='working_hours.monday.from']"
    Then I type "12:00" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then element with xpath "//span[contains(text(),'New specialist')]" should be present
    And element with xpath "//input[@id='last_name']" should be enabled
    And I wait for 2 sec

  @userstory3.8
  Scenario: Adding new specialist with empty required fields (Last name and First name)
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then  I should see page title contains "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    And I wait for 2 sec
    Then element with xpath "//h1[@class='font-medium text-xl']" should be present
    Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
    #open popup window
    And element with xpath "//span[contains(text(),'New specialist')]" should be present
    Then I click on element with xpath "//option[contains(text(),'Doctor')]"
    Then I type "09:00" into element with xpath "//input[@id='working_hours.monday.from']"
    Then I type "12:00" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then element with xpath "//span[contains(text(),'New specialist')]" should be present
    And element with xpath "//input[@id='first_name']" should be enabled
    And I wait for 2 sec

  @userstory3.9
  Scenario Outline: Data driven scenario Adding new specialist with valid credentials
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title contains "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    And I wait for 2 sec
    Then element with xpath "//h1[@class='font-medium text-xl']" should be present
    Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
    And element with xpath "//span[contains(text(),'New specialist')]" should be present
    Then I type <NewSpecFirstName> into element with xpath "//input[@id='first_name']"
    Then I type <NewSpecLastName> into element with xpath "//input[@id='last_name']"
    Then I click on element with xpath <xpath9>
    Then I type <workingHoursFrom1> into element with xpath <xpath10>
    Then I type <workingHoursTo1> into element with xpath <xpath11>
    And I type <workingHoursFrom2> into element with xpath <xpath12>
    And I type <workingHoursTo2> into element with xpath <xpath13>
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then I open url "https://medicenter-qa2.vercel.app/"
    And I wait for 2 sec
    Then element with xpath <xpath15> should be present
    Examples:
    | NewSpecFirstName | NewSpecLastName | xpath9                                    | workingHoursFrom1   | xpath10                           | workingHoursTo1   | xpath11                          | workingHoursFrom2   | xpath12                          | workingHoursTo2   | xpath13                             | xpath15                              |
    |  "Karl"          |   "Marx"        |  "//option[contains(text(),'Ophthalmologist')]" | "09:00" | "//input[@id='working_hours.tuesday.from']" | "12:00" | "//input[@id='working_hours.tuesday.to']" | "13:00" | "//input[@id='working_hours.thursday.from']" | "16:00" | "//input[@id='working_hours.thursday.to']" | "//td[contains(text(),'Karl Marx')]" |
    |  "Karl2"          |   "Marx2"        |  "//option[contains(text(),'Cardiologist')]" | "10:00" | "//input[@id='working_hours.monday.from']" | "11:45" | "//input[@id='working_hours.monday.to']" | "14:00" | "//input[@id='working_hours.thursday.from']" | "15:00" | "//input[@id='working_hours.thursday.to']" | "//td[contains(text(),'Karl2 Marx2')]" |
    |  "Karl3"          |   "Marx3"        |  "//option[contains(text(),'Neurologist')]" | "09:30" | "//input[@id='working_hours.wednesday.from']" | "11:30" | "//input[@id='working_hours.wednesday.to']" | "12:00" | "//input[@id='working_hours.friday.from']" | "16:45" | "//input[@id='working_hours.friday.to']" | "//td[contains(text(),'Karl3 Marx3')]" |
    |  "Karl4"          |   "Marx4"        |  "//option[contains(text(),'Nurse')]" | "11:00" | "//input[@id='working_hours.monday.from']" | "13:30" | "//input[@id='working_hours.monday.to']" | "14:00" | "//input[@id='working_hours.thursday.from']" | "17:00" | "//input[@id='working_hours.thursday.to']" | "//td[contains(text(),'Karl4 Marx4')]" |
    |  "Karl5"          |   "Marx5"        |  "//option[contains(text(),'Doctor')]" | "14:00" | "//input[@id='working_hours.monday.from']" | "16:30" | "//input[@id='working_hours.monday.to']" | "09:00" | "//input[@id='working_hours.friday.from']" | "14:00" | "//input[@id='working_hours.friday.to']" | "//td[contains(text(),'Karl5 Marx5')]" |

