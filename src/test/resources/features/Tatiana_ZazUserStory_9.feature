#Author: Tatiana Zaznova


Feature:Automation tests cases for Medical Center

  Scenario:Admin user able to navigate and open "Appointments" tab.
    Given TZ open "MedicalCenter" page
    Then TZ login as administrator
    Then I wait for element with xpath "//h1[contains(text(),'Tata Zaz')]" to be present
    And I wait for element with xpath "//button[contains(text(),'Appointments')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Appointments')]"
    And I wait for element with xpath "//button[contains(text(),'Add appointment')]" to be present

    Scenario: Appointment summary view displays all required fields.
      Given TZ open "MedicalCenter" page
      Then TZ login as administrator
      Then I wait for element with xpath "//h1[contains(text(),'Tata Zaz')]" to be present
      And I wait for element with xpath "//button[contains(text(),'Appointments')]" to be present
      Then I click on element with xpath "//button[contains(text(),'Appointments')]"
      Then I wait for element with xpath "//div[contains(text(),'Super Man')]" to be present
      Then I click on element with xpath "//div[contains(text(),'Super Man')]"
      And element with xpath "//span[contains(text(),'Appointment summary')]" should be present
      Then I wait for 3 sec
      Then element with xpath "//dt[contains(text(),'Patient first and last name')]" should be present
      And element with xpath "//dt[contains(text(),'Specialist')]" should be present
      And element with xpath "//dt[contains(text(),'Date')]" should be present


Scenario: Admin user able to generate a report with a list of appointments scheduled for a specific day.
  Given TZ open "MedicalCenter" page
  Then TZ login as administrator
  Then I wait for element with xpath "//h1[contains(text(),'Tata Zaz')]" to be present
  And I wait for element with xpath "//button[contains(text(),'Appointments')]" to be present
  Then I click on element with xpath "//button[contains(text(),'Appointments')]"
  And I click on element with xpath "//button[@title='day view' and contains(text(),'day')]"
  Then I wait for element with xpath "//button[contains(text(),'Generate PDF for this day')]" to be present

