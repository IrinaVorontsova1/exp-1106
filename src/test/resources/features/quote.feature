Feature: Quote

  Background:
    Given I open url "https://quote-stage.portnov.com/"
#    Given I open url "https:https//quote-qa.portnov.com/"

    
  Scenario: Verify submission form with empty fields
    Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    Then I click on element with xpath "//button[@type='submit']"
    Then element with xpath "//label[@id='name-error']" should contain text "This field is required."
    Then element with xpath "//label[@id='username-error']" should contain text "This field is required."
    Then element with xpath "//label[@id='password-error']" should contain text "This field is required."
    Then element with xpath "//label[@id='email-error']" should be displayed
    Then I take screenshot

    Scenario: Verify submission with credentials
      Then I click on element with xpath "//input[@id='name']"
      Then element with xpath "//span[@class='ui-dialog-title']" should be displayed
      Then I type "Irina" into element with xpath "//input[@id='firstName']"
      Then I type "Voronts" into element with xpath "//input[@id='lastName']"
      Then I click on element with xpath "//span[contains(text(), 'Save')]"
      Then I type "irinaV" into element with xpath "//input[@ng-model='formData.username']"
      Then I type "irinav@gmail.com" into element with xpath "//input[@ng-model='formData.email']"
      Then I type "123abc" into element with xpath "//input[@ng-model='formData.password']"
      Then I type "123abc" into element with xpath "//input[@ng-model='formData.confirmPassword']"
      When I switch to iframe with xpath "//*[@name='additionalInfo']"
      Then I type "Artem" into element with xpath "//input[@id='contactPersonName']"
      And I type "4150001122" into element with xpath "//input[@id='contactPersonPhone']"
      Then I switch to default content
      Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
      Then I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//legend[contains(text(), 'Submitted Application')]" to be present

      
      Scenario Outline: Quotes requests for users
        Then I click on element with xpath "//input[@id='name']"
        Then I type "<FirstName>" into element with xpath "//input[@id='firstName']"
        Then I type "<MiddleName>" into element with xpath "//input[@id='middleName']"
        Then I type "<LastName>" into element with xpath "//input[@id='lastName']"
        Then I click on element with xpath "//span[contains(text(), 'Save')]"
        Then element with xpath "//input[@id='name']" should have attribute "value" as "<FullName>"
        Then I wait for 3 sec


        Examples:
          | FirstName  | MiddleName | LastName  | FullName              |
          | Test       | Testovich  | Testov    | Test Testovich Testov |
          | John       |            | Doe       | John Doe              |
          | Irina      |            | Vorontsova| Irina Vorontsova      |
