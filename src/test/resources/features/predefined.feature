@predefined
Feature: Smoke steps

  @predefined1
  @regression
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then I type "Cucumber" into element with xpath "//textarea[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    # Then I wait for 2 sec
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then I take screenshot
    Then I should see page title contains "- Google Search"
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  Scenario: Calculator addition test
    Given I open url "https://www.calculator.net/"
    Then I click on element with xpath "//span[contains(text(), '2')]"
    Then I click on element with xpath "(//span[contains(text(), '+')])[1]"
    Then I click on element with xpath "//span[contains(text(), '2')]"
    Then I click on element with xpath "//span[contains(text(), '=')]"
    Then element with xpath "//div[@id='sciOutPut']" should contain text "4"
    Then I wait for 2 sec

  Scenario: Calculator responsive test
    Given I open url "https://www.calculator.net/"
    Then element with xpath "//div[@id='homefunbtn']" should be displayed
    Then I resize window to 700 and 400
    Then element with xpath "//div[@id='homefunbtn']" should not be displayed
    Then I wait for 2 sec

  Scenario: Recruit login test
    Given I open url "http://recruit-qa.portnov.com/"
    Then I click on element with xpath "//button[contains(text(), 'Login')]"
    Then element with xpath "//span[contains(text(), 'Login')]" should be displayed
    Then I type "student@example.com" into element with xpath "//input[@placeholder='Please enter an Email']"
    Then I type "welcome" into element with xpath "//input[@placeholder='Please enter a Password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//span[contains(text(), 'Careers')]/..//div/div/span/a" to be present
    Then element with xpath "//span[contains(text(), 'Careers')]/..//div/div/span/a" should contain text "Student"





  Scenario: Bing search engine
    Given I open url "https://www.bing.com/"
    Then I should see page title as "Bing"
    Then I type "Cucumber" into element with xpath "//textarea[@id='sb_form_q']"
#    Then I click on element using JavaScript with xpath "//label[@for='sb_form_go']/*/*"
    Then I press enter for element with xpath "//textarea[@id='sb_form_q']"
    Then I wait for element with xpath "//ol[@id='b_results']" to be present
    Then I should see page title contains "Search"
    Then element with xpath "//ol[@id='b_results']" should contain text "Cucumber"


  Scenario: Gibiru search engine
    Given I open url "https://gibiru.com"
    Then I should see page title contains "Gibiru"
    Then I type "Cucumber" into element with xpath "//input[@id='q']"
    Then I click on element with xpath "//button[@type='submit']"
  # Then I wait for 2 sec
    Then I wait for element with xpath "//div[@id='web-results']" to be present
    Then I should see page title contains "Results"
    Then element with xpath "//div[@id='web-results']" should contain text "Cucumber"


  Scenario: Swisscows search engine
    Given I open url "https://swisscows.com/en"
    Then I should see page title contains "Swisscows"
    Then I type "Cucumber" into element with xpath "//input[@type='search']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='web-results']/.." to be present
    Then I should see page title contains "Swisscows"
    Then element with xpath "//article[@class='text-item']/../.." should contain text "Cucumber"

    
    Scenario: Ecosia search engine
      Given I open url "https://www.ecosia.org/"
      Then I should see page title contains "Ecosia"
      Then I type "cucumber" into element with xpath "//input[@type='search']"
      Then I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//div[@data-test-id='mainline-result-productAds']" to be present
      Then I should see page title contains "cucumber"
      Then element with xpath "//main[@data-test-id='layout-content']" should contain text "cucumber"


      Scenario: Yahoo? search engine
        Given I open url "https://www.yahoo.com/"
        Then I should see page title contains "Yahoo"
        Then I type "cucumber" into element with xpath "//input[@id='ybar-sbq']"
        Then I click on element with xpath "//button[@type='submit']"
        Then I wait for element with xpath "//input[@placeholder='Search the web']" to be present
#        Then I should see page title contains "cucumber"
#        Then element with xpath "//div[@class='srch-mg sys_yahoo_recipe']" should contain text "cucumber"

  Scenario: Duckduckgo search engine
    Given I open url "https://duckduckgo.com/"
    Then I should see page title contains "DuckDuckGo"
    Then I type "cucumber" into element with xpath "//input[@id='searchbox_input']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//ol[@class='react-results--main']" to be present
    Then I should see page title contains "cucumber"
    Then element with xpath "//input[@id='search_form_input']" should contain text "cucumber"



