#Author: Shamil Khamrayev
@US#5
Feature: Test cases for user story #5

  @US#5.1
  Scenario Outline: Creating an appointment by administrator (Main)
    Given SK In <envVersion> env Login as an administrator to the application and start from home page
    #Starting point verification:
    Then SK The <Add specialist button> element found by xpath should be present
    Then SK Click on <Appointments section button> element found by xpath
    And SK Click on <Add appointment button> element found by xpath
    Then SK I type <Patient name> into <Patient first and last name field> element found by xpath
    Then SK I type <Purpose> into <Purpose of appointment field> element found by xpath
    Then I wait for 1 sec
    Then SK I select <Specialist> element by xpath
    Then SK I type <Date> into <Date field> element found by xpath
    Then I wait for 1 sec
    Then SK I click on <First available time> element by xpath
    And SK I click on <Save button> element by xpath
    Then I wait for 2 sec
    Then SK I verify the <Patient name>'s appointment data by xpath
    And SK I delete the <Patient name>'s appointment
    And I wait for 1 sec
    Examples:
      | envVersion | Add specialist button                          | Appointments section button                  | Add appointment button                          | Patient first and last name field | Patient name | Purpose of appointment field | Purpose    | Specialist                                                          | Date         | Date field            | First available time                                                                 | Save button                           |
      #Happy path:
      | "qa2"      | "//button[contains(text(), 'Add specialist')]" | "//button[contains(text(), 'Appointments')]" | "//button[contains(text(), 'Add appointment')]" | "//input[@id='user_name']"        | "Matt Joe"   | "//textarea[@id='note']"     | "Backache" | "//select[@name='employee_id']/option[contains(text(), 'TestDoc')]" | "12/09/2023" | "//input[@id='date']" | "//button[contains( text(), 'Save')]/preceding::div[@role = 'radiogroup']/button[1]" | "//button[contains( text(), 'Save')]" |
      #With alphanumeric and special chars patient name
      | "qa2"      | "//button[contains(text(), 'Add specialist')]" | "//button[contains(text(), 'Appointments')]" | "//button[contains(text(), 'Add appointment')]" | "//input[@id='user_name']"        | "R3#qY8k@F"  | "//textarea[@id='note']"     | "Backache" | "//select[@name='employee_id']/option[contains(text(), 'TestDoc')]" | "12/09/2023" | "//input[@id='date']" | "//button[contains( text(), 'Save')]/preceding::div[@role = 'radiogroup']/button[1]" | "//button[contains( text(), 'Save')]" |
      #Positive Boundary condition testing in patient name field:
      | "qa2"      | "//button[contains(text(), 'Add specialist')]" | "//button[contains(text(), 'Appointments')]" | "//button[contains(text(), 'Add appointment')]" | "//input[@id='user_name']"        | "a"          | "//textarea[@id='note']"     | "Backache" | "//select[@name='employee_id']/option[contains(text(), 'TestDoc')]" | "12/09/2023" | "//input[@id='date']" | "//button[contains( text(), 'Save')]/preceding::div[@role = 'radiogroup']/button[1]" | "//button[contains( text(), 'Save')]" |
      | "qa2"      | "//button[contains(text(), 'Add specialist')]" | "//button[contains(text(), 'Appointments')]" | "//button[contains(text(), 'Add appointment')]" | "//input[@id='user_name']"        | "Kz63c4Yr07NC3CFYy83oK1ql2rNtoYxfAgnTc3RiDtD8oZQj7hJnmWeljEeqLAn1thRPPw747Ecv74il8OLC0fCx2Movhcap DTjqnZcDTatUD3Pp9mhsjt7oIMdrlyS dcdOuACcykgxYrr2IUbKPzNpi8w3bMUZSV2Fbn69oWqMxrUZgZGRtcCTdykcudOEfUcag6YVdCzcl85tiswTKz2DH wLiDy6YYwhsaZIZwmdqc2hp1DvKt6byx1uw6v" | "//textarea[@id='note']"     | "Backache" | "//select[@name='employee_id']/option[contains(text(), 'TestDoc')]" | "12/09/2023" | "//input[@id='date']" | "//button[contains( text(), 'Save')]/preceding::div[@role = 'radiogroup']/button[1]" | "//button[contains( text(), 'Save')]" |
      | "qa2"      | "//button[contains(text(), 'Add specialist')]" | "//button[contains(text(), 'Appointments')]" | "//button[contains(text(), 'Add appointment')]" | "//input[@id='user_name']"        | "MCcAMQ7T7YPz4R2BzMN4pIhWv8MEbzzWSwAFn8ZH7bzGNlkagZeJSss2EWlRS74QKnyRbBWOKKIEVf6s7lT7Sx94dkzg2wZYpWrF"          | "//textarea[@id='note']"     | "Backache" | "//select[@name='employee_id']/option[contains(text(), 'TestDoc')]" | "12/09/2023" | "//input[@id='date']" | "//button[contains( text(), 'Save')]/preceding::div[@role = 'radiogroup']/button[1]" | "//button[contains( text(), 'Save')]" |
      #With alphanumeric and special chars in "Purpose of appointment":
      | "qa2"      | "//button[contains(text(), 'Add specialist')]" | "//button[contains(text(), 'Appointments')]" | "//button[contains(text(), 'Add appointment')]" | "//input[@id='user_name']"        | "Matt Joe"   | "//textarea[@id='note']"     | "7E#bK9GjFzL$R2T&Q6@eX1c" | "//select[@name='employee_id']/option[contains(text(), 'TestDoc')]" | "12/09/2023" | "//input[@id='date']" | "//button[contains( text(), 'Save')]/preceding::div[@role = 'radiogroup']/button[1]" | "//button[contains( text(), 'Save')]" |
      #Positive Boundary condition testing in "Purpose of appointment" field:
      | "qa2"      | "//button[contains(text(), 'Add specialist')]" | "//button[contains(text(), 'Appointments')]" | "//button[contains(text(), 'Add appointment')]" | "//input[@id='user_name']"        | "Matt Joe"   | "//textarea[@id='note']"     | "a" | "//select[@name='employee_id']/option[contains(text(), 'TestDoc')]" | "12/09/2023" | "//input[@id='date']" | "//button[contains( text(), 'Save')]/preceding::div[@role = 'radiogroup']/button[1]" | "//button[contains( text(), 'Save')]" |
      | "qa2"      | "//button[contains(text(), 'Add specialist')]" | "//button[contains(text(), 'Appointments')]" | "//button[contains(text(), 'Add appointment')]" | "//input[@id='user_name']"        | "Matt Joe"   | "//textarea[@id='note']"     | "4K0t1MSvnv5uI25yRPfh1yYSGJJW0A3YWeZZHGwfmFicTtFQQk1T8unETuVZWLVJo1yDYgSqwZC8FdE2kefTLdHUgI7WAtK6doWzOwhP1A6EaroA0TuLVfP6nFRzV 6yCm23INrzJ9Cj yrZlrixLR2GLoej MO Z2UZe8hER7zfWeauQihF8gjKPakwgS0mpnJs9p4hjBtS6EasEtlkmzwOKMm6xbZzZU3RMbWJPyOEofd8ofZlWZAAxYipC3TytZGYt7oElf4KuHFzM2jkwMS24Y3PsAjDkYW2WKFmgNssh99D32F282xfZ5cyJfnxhn1zWOS3i C1AjOvChN09Zu1Oe5xKrUJzDE GB5UzHxiMj2r5mbraGOWkjjlnudCjZ5jrczhMSP2azQLV0wT6GtuHoFJE9Fsn6YsAOzH37NQhGmE8hoJRGfxCw9Z8CAShF3ev1a2tYYe33vitoMvNe73cE2ZdGwMjk9V8Lj3M3HrMjpZiDs0" | "//select[@name='employee_id']/option[contains(text(), 'TestDoc')]" | "12/09/2023" | "//input[@id='date']" | "//button[contains( text(), 'Save')]/preceding::div[@role = 'radiogroup']/button[1]" | "//button[contains( text(), 'Save')]" |
      | "qa2"      | "//button[contains(text(), 'Add specialist')]" | "//button[contains(text(), 'Appointments')]" | "//button[contains(text(), 'Add appointment')]" | "//input[@id='user_name']"        | "Matt Joe"   | "//textarea[@id='note']"     | "I3hjn33HbO6WjgopUEQY5g7 MZKJesq7pO5VZ9YMBVgF0aSt7O7K5KCEAETNuuyAPqmAYd23Q3x2uCmK1b5BoIYLh8YtmMp DjJZIj0tzdR1HlwY xymiK73oeuVIRvYtfvOpRGlr36aUG0ZRPJO5pZet8oWrZKDxmScExeZee6eNPikTCjB47VQSRW45ubzPLJMAO6ikf8mgRe15SFtkZcgIsPxYKG6F25SPf61wJkLlJSV611Y55FYqf" | "//select[@name='employee_id']/option[contains(text(), 'TestDoc')]" | "12/09/2023" | "//input[@id='date']" | "//button[contains( text(), 'Save')]/preceding::div[@role = 'radiogroup']/button[1]" | "//button[contains( text(), 'Save')]" |
      | "qa2"      | "//button[contains(text(), 'Add specialist')]" | "//button[contains(text(), 'Appointments')]" | "//button[contains(text(), 'Add appointment')]" | "//input[@id='user_name']"        | "Matt Joe"   | "//textarea[@id='note']"     | "" | "//select[@name='employee_id']/option[contains(text(), 'TestDoc')]" | "12/09/2023" | "//input[@id='date']" | "//button[contains( text(), 'Save')]/preceding::div[@role = 'radiogroup']/button[1]" | "//button[contains( text(), 'Save')]" |


  @US#5.2
  Scenario Outline: Creating an appointment by administrator without choosing a specialist
    Given SK In <envVersion> env Login as an administrator to the application and start from home page
    #Starting point verification:
    Then SK The <Add specialist button> element found by xpath should be present
    Then SK Click on <Appointments section button> element found by xpath
    And SK Click on <Add appointment button> element found by xpath
    Then SK I type <Patient name> into <Patient first and last name field> element found by xpath
    Then SK I type <Purpose> into <Purpose of appointment field> element found by xpath
    Then I wait for 1 sec
    Then SK I type <Date> into <Date field> element found by xpath
    Then I wait for 1 sec
    Then SK If present I click on <First available time> element by xpath
    And SK I click on <Save button> element by xpath
    Then I wait for 2 sec
    And SK The <This specialist doesn't have free slots this day> element found by xpath should be present

    Examples:
      | envVersion | Add specialist button                          | Appointments section button                  | Add appointment button                          | Patient first and last name field | Patient name | Purpose of appointment field | Purpose    | Date         | Date field            | First available time                                                                 | Save button                           | This specialist doesn't have free slots this day |
      | "qa2"      | "//button[contains(text(), 'Add specialist')]" | "//button[contains(text(), 'Appointments')]" | "//button[contains(text(), 'Add appointment')]" | "//input[@id='user_name']"        | "Matt Joe"   | "//textarea[@id='note']"     | "Backache" | "12/09/2023" | "//input[@id='date']" | "//button[contains( text(), 'Save')]/preceding::div[@role = 'radiogroup']/button[1]" | "//button[contains( text(), 'Save')]" | "//button/preceding-sibling::p" |

  @US#5.3
  Scenario Outline: Creating an appointment by administrator without specifying time
    Given SK In <envVersion> env Login as an administrator to the application and start from home page
    #Starting point verification:
    Then SK The <Add specialist button> element found by xpath should be present
    Then SK Click on <Appointments section button> element found by xpath
    And SK Click on <Add appointment button> element found by xpath
    Then SK I type <Patient name> into <Patient first and last name field> element found by xpath
    Then SK I type <Purpose> into <Purpose of appointment field> element found by xpath
    Then I wait for 1 sec
    Then SK I select <Specialist> element by xpath
    Then SK I type <Date> into <Date field> element found by xpath
    Then I wait for 1 sec
    And SK I click on <Save button> element by xpath
    Then I wait for 2 sec
    Then SK The <Save button> element found by xpath should be present
    Examples:
      | envVersion | Add specialist button                          | Appointments section button                  | Add appointment button                          | Patient first and last name field | Patient name | Purpose of appointment field | Purpose    | Specialist                                                          | Date         | Date field            | Save button                           |
      | "qa2"      | "//button[contains(text(), 'Add specialist')]" | "//button[contains(text(), 'Appointments')]" | "//button[contains(text(), 'Add appointment')]" | "//input[@id='user_name']"        | "Matt Joe"   | "//textarea[@id='note']"     | "Backache" | "//select[@name='employee_id']/option[contains(text(), 'TestDoc')]" | "12/09/2023" | "//input[@id='date']" | "//button[contains( text(), 'Save')]" |

  @US#5.4
  Scenario Outline: Creating an appointment by administrator without saving the entry
    Given SK In <envVersion> env Login as an administrator to the application and start from home page
    #Starting point verification:
    Then SK The <Add specialist button> element found by xpath should be present
    Then SK Click on <Appointments section button> element found by xpath
    And SK Click on <Add appointment button> element found by xpath
    Then SK I type <Patient name> into <Patient first and last name field> element found by xpath
    Then SK I type <Purpose> into <Purpose of appointment field> element found by xpath
    Then I wait for 1 sec
    Then SK I select <Specialist> element by xpath
    Then SK I type <Date> into <Date field> element found by xpath
    Then I wait for 1 sec
    Then SK I click on <First available time> element by xpath
    And SK I click on <Close button> element by xpath
    Then SK I verify that <Patient name>'s appointment data by xpath should not be present
    Examples:
      | envVersion | Add specialist button                          | Appointments section button                  | Add appointment button                          | Patient first and last name field | Patient name | Purpose of appointment field | Purpose    | Specialist                                                          | Date         | Date field            | First available time                                                                 | Close button                                       |
      | "qa2"      | "//button[contains(text(), 'Add specialist')]" | "//button[contains(text(), 'Appointments')]" | "//button[contains(text(), 'Add appointment')]" | "//input[@id='user_name']"        | "Matt Joe"   | "//textarea[@id='note']"     | "Backache" | "//select[@name='employee_id']/option[contains(text(), 'TestDoc')]" | "12/09/2023" | "//input[@id='date']" | "//button[contains( text(), 'Save')]/preceding::div[@role = 'radiogroup']/button[1]" | "//span[contains(text(), 'close')]/parent::button" |

  @US#5.5
  Scenario Outline: Negative Boundary condition testing in patient name field with 257 chars
    Given SK In <envVersion> env Login as an administrator to the application and start from home page
    #Starting point verification:
    Then SK The <Add specialist button> element found by xpath should be present
    Then SK Click on <Appointments section button> element found by xpath
    And SK Click on <Add appointment button> element found by xpath
    Then SK I type <Patient name> into <Patient first and last name field> element found by xpath
    Then SK I type <Purpose> into <Purpose of appointment field> element found by xpath
    Then I wait for 1 sec
    Then SK I select <Specialist> element by xpath
    Then SK I type <Date> into <Date field> element found by xpath
    Then I wait for 1 sec
    Then SK I click on <First available time> element by xpath
    And SK I click on <Save button> element by xpath
    Then I wait for 2 sec
    Then SK The <Save button> element found by xpath should be present
    Examples:
      | envVersion | Add specialist button                          | Appointments section button                  | Add appointment button                          | Patient first and last name field | Patient name | Purpose of appointment field | Purpose    | Specialist                                                          | Date         | Date field            | First available time                                                                 | Save button                           |
      | "qa2"      | "//button[contains(text(), 'Add specialist')]" | "//button[contains(text(), 'Appointments')]" | "//button[contains(text(), 'Add appointment')]" | "//input[@id='user_name']"        | "Kz63c4Yr07NC3CFYy83oK1ql2rNtoYxfAgnTc3RiDtD8oZQj7hJnmWeljEeqLAn1thRPPw747Ecv74il8OLC0fCx2Movhcap DTjqnZcDTatUD3Pp9mhsjt7oIMdrlyS dcdOuACcykgxYrr2IUbKPzNpi8w3bMUZSV2Fbn69oWqMxrUZgZGRtcCTdykcudOEfUcag6YVdCzcl85tiswTKz2DH wLiDy6YYwhsaZIZwmdqc2hp1DvKt6byx1uw6v@"          | "//textarea[@id='note']"     | "Backache" | "//select[@name='employee_id']/option[contains(text(), 'TestDoc')]" | "12/09/2023" | "//input[@id='date']" | "//button[contains( text(), 'Save')]/preceding::div[@role = 'radiogroup']/button[1]" | "//button[contains( text(), 'Save')]" |

  @US#5.6
  Scenario Outline: Negative Boundary condition testing in patient name field with empty field
    Given SK In <envVersion> env Login as an administrator to the application and start from home page
    #Starting point verification:
    Then SK The <Add specialist button> element found by xpath should be present
    Then SK Click on <Appointments section button> element found by xpath
    And SK Click on <Add appointment button> element found by xpath
    Then SK I type <Patient name> into <Patient first and last name field> element found by xpath
    Then SK I type <Purpose> into <Purpose of appointment field> element found by xpath
    Then I wait for 1 sec
    Then SK I select <Specialist> element by xpath
    Then SK I type <Date> into <Date field> element found by xpath
    Then I wait for 1 sec
    Then SK I click on <First available time> element by xpath
    And SK I click on <Save button> element by xpath
    Then I wait for 2 sec
    Then SK The <Save button> element found by xpath should be present
    Examples:
      | envVersion | Add specialist button                          | Appointments section button                  | Add appointment button                          | Patient first and last name field | Patient name | Purpose of appointment field | Purpose    | Specialist                                                          | Date         | Date field            | First available time                                                                 | Save button                           |
      | "qa2"      | "//button[contains(text(), 'Add specialist')]" | "//button[contains(text(), 'Appointments')]" | "//button[contains(text(), 'Add appointment')]" | "//input[@id='user_name']"        | ""          | "//textarea[@id='note']"     | "Backache" | "//select[@name='employee_id']/option[contains(text(), 'TestDoc')]" | "12/09/2023" | "//input[@id='date']" | "//button[contains( text(), 'Save')]/preceding::div[@role = 'radiogroup']/button[1]" | "//button[contains( text(), 'Save')]" |

  @US#5.7
  Scenario Outline: Verify that appointment was saved on today's date without specifying any date
    Given SK In <envVersion> env Login as an administrator to the application and start from home page
    #Starting point verification:
    Then SK The <Add specialist button> element found by xpath should be present
    Then SK Click on <Appointments section button> element found by xpath
    And SK Click on <Add appointment button> element found by xpath
    Then SK I type <Patient name> into <Patient first and last name field> element found by xpath
    Then SK I type <Purpose> into <Purpose of appointment field> element found by xpath
    Then I wait for 1 sec
    Then SK I select <Specialist> element by xpath
    Then SK I type <Date> into <Date field> element found by xpath
    Then I wait for 1 sec
    Then SK If present I click on <First available time> element by xpath
    And SK I click on <Save button> element by xpath
    Then I wait for 2 sec
    Then SK I verify the <Patient name>'s appointment data by xpath
    And SK I delete the <Patient name>'s appointment
    Examples:
      | envVersion | Add specialist button                          | Appointments section button                  | Add appointment button                          | Patient first and last name field | Patient name | Purpose of appointment field | Purpose    | Specialist                                                          | Date         | Date field            | First available time                                                                 | Save button                           |
      | "qa2"      | "//button[contains(text(), 'Add specialist')]" | "//button[contains(text(), 'Appointments')]" | "//button[contains(text(), 'Add appointment')]" | "//input[@id='user_name']"        | "Matt Joe"   | "//textarea[@id='note']"     | "Backache" | "//select[@name='employee_id']/option[contains(text(), 'TestDoc')]" | "" | "//input[@id='date']" | "//button[contains( text(), 'Save')]/preceding::div[@role = 'radiogroup']/button[1]" | "//button[contains( text(), 'Save')]" |

  @US#5.8
  Scenario Outline: Negative Boundary condition testing in "Purpose of appointment" field with 501 chars
    Given SK In <envVersion> env Login as an administrator to the application and start from home page
    #Starting point verification:
    Then SK The <Add specialist button> element found by xpath should be present
    Then SK Click on <Appointments section button> element found by xpath
    And SK Click on <Add appointment button> element found by xpath
    Then SK I type <Patient name> into <Patient first and last name field> element found by xpath
    Then SK I type <Purpose> into <Purpose of appointment field> element found by xpath
    Then I wait for 1 sec
    Then SK I select <Specialist> element by xpath
    Then SK I type <Date> into <Date field> element found by xpath
    Then I wait for 1 sec
    Then SK I click on <First available time> element by xpath
    And SK I click on <Save button> element by xpath
    Then I wait for 2 sec
    Then SK The <Save button> element found by xpath should be present
    Examples:
      | envVersion | Add specialist button                          | Appointments section button                  | Add appointment button                          | Patient first and last name field | Patient name | Purpose of appointment field | Purpose    | Specialist                                                          | Date         | Date field            | First available time                                                                 | Save button                           |
      | "qa2"      | "//button[contains(text(), 'Add specialist')]" | "//button[contains(text(), 'Appointments')]" | "//button[contains(text(), 'Add appointment')]" | "//input[@id='user_name']"        | "Matt Joe"   | "//textarea[@id='note']"     | "jG4RAT8AwPZjVZKmwZ m2FYR1irUpAsRCzIwG0Me7U i81fsUcv9Wm6bU6fuCsaz6AuiUWVLZDfS7vHM6aISEB3vaACGMlLZb6oQ98wzjeHYdGsuk6mtNFZwBCB8Udn51nBjjzu3kj1udrw6UiHjkgDRDiGb97ZrNJBvDE6udo44ADZCnO48rY2LsnaLqj36WUYY6qZ4xQVPc5pHyFiYkJPO992fsGL48SqkNjrwsOqMvQA4PirxMlmCna5OWBmB2VGdmq94uvnFjQ7itejczrzMsswVplFoL6e8eaieCtJmgbn6b4i0wyqQ7zOz8zPFo5msDZHcjHbcZT8V0apnEWEZGE2ffYWpzRPedk1UoYh0WAaubRt8yZjks7BvgbTIlIoAhRdrzFgiS2HRTBZhTQFfhSiN6rWLYAVp0Rhv6DycjqMmFcq JhFL4nzOPTfZ6DpW0drvjycZQsZ4F72T 21pxEV 1fmdtr1JmzCIpeY16sMoMYVnL" | "//select[@name='employee_id']/option[contains(text(), 'TestDoc')]" | "12/09/2023" | "//input[@id='date']" | "//button[contains( text(), 'Save')]/preceding::div[@role = 'radiogroup']/button[1]" | "//button[contains( text(), 'Save')]" |
