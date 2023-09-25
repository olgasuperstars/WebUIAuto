# Author: Iryna K

Feature: User Story 8

Scenario: Patient can cancel an appointment
  Given I open url "https://medicenter-qa2.vercel.app/"
  Then  I should see page title contains "Medicenter"
  Then I click on element with xpath "//button[contains(text(),'Login')]"
  Then I type "rybiann@huuduc8404.xyz" into element with xpath "//input[@id='email']"
  Then I type "123456" into element with xpath "//input[@id='password']"
  Then I click on element with xpath "//button[contains(text(),'Sign in')]"
  And I wait for 2 sec
  Then element with xpath "//h1[@class='font-medium text-xl']" should be present
  When I click on element with xpath "(//*[contains(text(),'update')])[1]"
  #open popup window
  Then element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" should be present
  Then I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
  And I wait for 2 sec
