@US#10
Feature: Test cases for user story #10
  @US#10.1
  Scenario Outline: Verify the ability to get to the "Contact Us" page from the guest homepage
    Given SK Open <envVersion> env home page
    Then SK Click on <Contact link> element found by xpath
    And I wait for 1 sec
    Then SK The <Contact us text> element found by xpath should be present
    Examples:
      | envVersion | Contact link                      | Contact us text                       |
      | "qa2"      | "//a[contains(text(),'Contact')]" | "//h2[contains(text(),'Contact us')]" |

  @US#10.2
  Scenario Outline: Verify the ability to get to the "Contact Us" page from the patient homepage
    Given SK In <envVersion> env Login as a patient to the application and start from home page
    Then SK Click on <Contact link> element found by xpath
    Then SK The <Contact us text> element found by xpath should be present
    Examples:
      | envVersion | Contact link                      | Contact us text                       |
      | "qa2"      | "//a[contains(text(),'Contact')]" | "//h2[contains(text(),'Contact us')]" |

  @US#10.3
  Scenario Outline: Verify that contact links (email, phone number) redirect to the user's default client
    Given SK Open <envVersion> env home page
    Then SK Click on <Contact link on main page> element found by xpath
    And I wait for 2 sec
    Then SK Click on <Contact links> element found by xpath
    And SK The <Contact us text> element found by xpath should be present
    Examples:
      | envVersion | Contact link on main page         | Contact us text                       | Contact links                                    |
      #Reception email:
      | "qa2"      | "//a[contains(text(),'Contact')]" | "//h2[contains(text(),'Contact us')]" | "//a[contains(text(),'medicenter@example.com')]" |
      #Reception phone number:
      | "qa2"      | "//a[contains(text(),'Contact')]" | "//h2[contains(text(),'Contact us')]" | "//h3[contains(text(),'Reception')]/following::a[contains(@href, 'tel')][1]" |
      #First contact doctor's office phone number:
      | "qa2"      | "//a[contains(text(),'Contact')]" | "//h2[contains(text(),'Contact us')]" | "//h3[contains(text(), 'First contact doctor')]/following::a[1]" |
      #Diagnostic and Surgical Office phone number:
      | "qa2"      | "//a[contains(text(),'Contact')]" | "//h2[contains(text(),'Contact us')]" | "//h3[contains(text(),'Diagnostic and Surgical Office')]/following::a[contains(@href, 'tel')][1]" |

#All scenarios should pass