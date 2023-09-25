#Author: Tatiana Zaznova
# Jira task MA-669

  @TZmedicalcenter
  Feature: MedicalCenter Test Scenarios

    Scenario: Admin User able to create a specialist.
      Given TZ open "MedicalCenter" page
      Then TZ login as administrator
      Then I wait for element with xpath "//h1[contains(text(),'Tata Zaz')]" to be present
      Then I click on element with xpath " //button[contains(text(),'Specialists')]"
      And I click on element with xpath "//button[contains(text(),'Add specialist')]"
      Then I type "Tata" into element with xpath "//input[@id='first_name']"
      And I type "Doc" into element with xpath "//input[@id='last_name']"
      Then I click on element with xpath "//button[contains(text(),'Save')]"
      And TZ refresh the page
      Then I wait for element with xpath "//td[contains(text(),'Tata Doc')]" to be present


Scenario:MA-293 Administrator user able to open "Edit specialist Info" window
  Given TZ open "MedicalCenter" page
  Then TZ login as administrator
  Then I wait for element with xpath "//h1[contains(text(),'Tata Zaz')]" to be present
  Then I click on element with xpath " //button[contains(text(),'Specialists')]"
  Then I wait for 3 sec
  And I click on element with xpath "//td[contains(text(),'Tata Doc')]//ancestor::tr/td[3]/div/span[1]/span"
  Then I wait for element with xpath "//span[contains(text(),'Edit specialist info')]" to be present



    Scenario: First and Last Name fields accept alphanumeric and special characters.
      Given TZ open "MedicalCenter" page
      Then TZ login as administrator
    Then I wait for element with xpath "//h1[contains(text(),'Tata Zaz')]" to be present
    Then I wait for 3 sec
    Then I click on element with xpath "//button[contains(text(),'Specialists')]"
    Then I wait for 10 sec
    And I click on element with xpath "//td[contains(text(),'Tata Doc')]//ancestor::tr/td[3]/div/span[1]/span"
    Then I wait for element with xpath "//span[contains(text(),'Edit specialist info')]" to be present
    Then I wait for element with xpath "//input[@id='first_name']" to be present
    And I wait for element with xpath "//input[@id='last_name']" to be present
    #Verify that fields accept alphanumeric and special characters
    Then I clear element with xpath "//input[@id='first_name']"
    And I clear element with xpath "//input[@id='last_name']"
    Then I type "Robert32$" into element with xpath "//input[@id='first_name']"
    And I type "Borisov909%" into element with xpath "//input[@id='last_name']"
    And I click on element with xpath "//button[contains(text(),'Save')]"
    And I wait for 3 sec
    #Edit window closed and first name should be changed.
      And TZ refresh the page
    And I wait for element with xpath "//td[contains(text(),'Robert32$ Borisov909%')]" to be present
    
  
    
  
  Scenario: First and Last Name fields accept 98 characters.
    Given TZ open "MedicalCenter" page
    Then TZ login as administrator
    Then I wait for element with xpath "//td[contains(text(),'Robert32$ Borisov909%')]" to be present
    Then I wait for 3 sec
    Then I click on element with xpath "//button[contains(text(),'Specialists')]"
    Then I wait for 10 sec
    And I click on element with xpath "//td[contains(text(),'Robert32$ Borisov909%')]//ancestor::tr/td[3]/div/span[1]/span"
    Then I wait for element with xpath "//span[contains(text(),'Edit specialist info')]" to be present
    Then I wait for element with xpath "//input[@id='first_name']" to be present
    And I wait for element with xpath "//input[@id='last_name']" to be present
    #Verify that first and last name field accepts 98 characters
    Then I clear element with xpath "//input[@id='first_name']"
    And I clear element with xpath "//input[@id='last_name']"
    Then I type "RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo" into element with xpath "//input[@id='first_name']"
    And I type "RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo" into element with xpath "//input[@id='last_name']"
    And I click on element with xpath "//button[contains(text(),'Save')]"
    And I wait for 3 sec
  #Edit window closed and first name should be changed.
    And TZ refresh the page
    And I wait for element with xpath "//td[contains(text(),'RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo')]" to be present


    Scenario: Admin user able to remove employee.
      Given TZ open "MedicalCenter" page
      Then TZ login as administrator
      Then I wait for element with xpath "//td[contains(text(),'RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo')]" to be present
      Then I click on element with xpath "//td[contains(text(),'RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo')]//ancestor::tr/td[3]/div/span[2]/span"
      Then I wait for element with xpath "//span[contains(text(),'Removing specialist')]" to be present
      And I click on element with xpath "//button[contains(text(),'Remove specialist')]"
      And TZ refresh the page
      Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
      And element with xpath "//td[contains(text(),'RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo')]" should not be present

    Scenario Outline: Admin user able to modify working hours.
      Given TZ open "MedicalCenter" page
      Then TZ login as administrator
      And I wait for element with xpath "//td[contains(text(),'Tata Doc')]//ancestor::tr/td[3]/div/span[1]/span" to be present
      Then I click on element with xpath "//td[contains(text(),'Tata Doc')]//ancestor::tr/td[3]/div/span[1]/span"
      And I wait for element with xpath "//button[contains(text(),'Save')]" to be present
      Then I clear element with xpath <xpath7>
      And I wait for 2 sec
      And I type <workingHoursFrom> into element with xpath <xpath7>
      Then I clear element with xpath <xpath8>
      Then I wait for 2 sec
      And I type <workingHoursTo> into element with xpath <xpath8>
      Then I click on element with xpath "//button[contains(text(),'Save')]"
      And TZ refresh the page
      And I wait for element with xpath "//td[contains(text(),'Tata Doc')]//ancestor::tr/td[3]/div/span[1]/span" to be present
      Then I click on element with xpath "//td[contains(text(),'Tata Doc')]//ancestor::tr/td[3]/div/span[1]/span"
      And I wait for element with xpath "//button[contains(text(),'Save')]" to be present
      Then element with xpath <xpath7> should have attribute "value" as <workingHoursFrom>
      And element with xpath <xpath8> should have attribute "value" as <workingHoursTo>
      Examples:
      | xpath7                                        | workingHoursFrom   | xpath8                                      | workingHoursTo   |
      | "//input[@id='working_hours.monday.from']"    | "10:00"            | "//input[@id='working_hours.monday.to']"    | "15:00"          |
      | "//input[@id='working_hours.tuesday.from']"   | "11:00"            | "//input[@id='working_hours.tuesday.to']"   | "16:00"          |
      | "//input[@id='working_hours.wednesday.from']" | "12:00"            | "//input[@id='working_hours.wednesday.to']" | "17:00"          |
      | "//input[@id='working_hours.thursday.from']"  | "09:00"            | "//input[@id='working_hours.thursday.to']"  | "18:00"          |
      | "//input[@id='working_hours.friday.from']"    | "08:00"            | "//input[@id='working_hours.friday.to']"    | "19:00"          |

    Scenario Outline: Admin user able to select specialist from dropdowm list in Edit window.
      Given TZ open "MedicalCenter" page
      Then TZ login as administrator
      And I wait for element with xpath "//td[contains(text(),'Tata Doc')]" to be present
      Then I click on element with xpath "//td[contains(text(),'Tata Doc')]//ancestor::tr/td[3]/div/span[1]/span"
      And I wait for element with xpath "//span[contains(text(),'Edit specialist info')]" to be present
      And I wait for element with xpath "//button[contains(text(),'Save')]" to be present
      Then I click on element with xpath <specialistRole>
      Then I click on element with xpath "//button[contains(text(),'Save')]"
      And TZ refresh the page
      And I wait for element with xpath "//td[contains(text(),'Tata Doc')]" to be present
      Then element with xpath "//td[contains(text(),'Tata Doc')]//ancestor::tr/td[2]/span" should contain text <role>
      Examples:
        | specialistRole                                   | role               |
        | "//option[contains(text(),'Neurologist')]"       | "Neurologist"      |
        | "//option[contains(text(),'Doctor')]"            | "Doctor"           |
        | "//option[contains(text(),'Nurse')]"             | "Nurse"            |
        | "//option[contains(text(),'Ophthalmologist')]"   | "Ophthalmologist"  |
        | "//option[contains(text(),'Cardiologist')]"      | "Cardiologist"     |
