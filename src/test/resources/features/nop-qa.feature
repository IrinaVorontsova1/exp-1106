Feature: Order features

  Scenario: Validation order process
    Given I open url "https://nop-qa.portnov.com/"
    Then I mouse over element with xpath "//li/a[contains(text(), 'Computers') and @href='/computers']"
    Then I wait for element with xpath "//a[@href='/desktops']" to be present
    Then I click on element with xpath "//a[@href='/desktops']"
#    Then element with xpath "//div[@class='page-title']/h1[contains(text(), 'Computers')]" should be present
    Then I wait for element with xpath "//div[@class='page-title']/h1[contains(text(), 'Desktops')]" to be present
    Then I click on element with xpath "//h2[@class='product-title']//a[@href='/build-your-own-computer']"
    Then I click on element with xpath "//select[@id='product_attribute_2']/option[@value='3']"
    Then I click on element with xpath "//input[@id='product_attribute_3_6']"
    Then I clear element with xpath "//input[@id='product_enteredQuantity_1']"
    Then I type "2" into element with xpath "//input[@id='product_enteredQuantity_1']"
    Then I click on element with xpath "//button[@id='add-to-cart-button-1']"
    Then I click on element with xpath "//span[contains(text(),'Shopping cart')]"
    Then I wait for element with xpath "//div[@class='page-title']/h1[contains(text(), 'Shopping cart')]" to be present
    Then element with xpath "//td[@class='unit-price']//span[contains(text(), '$1,315.00')]" should be present
    Then element with xpath "//td[@class='subtotal']//span[contains(text(), '$2,630.00')]" should be displayed
    Then element with xpath "//td[@class='cart-total-right']//span[contains(text(), '$2,630.00')]" should be present
    Then element with xpath "//td[@class='cart-total-right']//span/strong" should contain text "$2,630.00"



  Scenario: Test the shopping cart
    Given I open url "https://nop-qa.portnov.com/"
    Then I mouse over element with xpath "//li[contains(a/text(),'Computers')]"
    Then I wait for element with xpath "//a[@href='/desktops']" to be present
    Then I click on element with xpath "//a[@href='/desktops']"
    Then I click on element with xpath "//h2[@class='product-title']//a[contains(text(),'Build')]"
    Then I click on element with xpath "//select[@name='product_attribute_2']//option[@value='3']"
    Then I click on element with xpath "//input[@id='product_attribute_3_6']"
    Then I clear element with xpath "//input[@id='product_enteredQuantity_1']"
    Then I type "2" into element with xpath "//input[@id='product_enteredQuantity_1']"
    Then I click on element with xpath "//button[@id='add-to-cart-button-1']"
    Then I click on element with xpath "//span[contains(text(),'Shopping cart')]"
    Then I wait for element with xpath "//td[@class='unit-price' and contains(span[@class='product-unit-price'],'$1,315.00')]" to be present
    Then element with xpath "//*[contains(text(), 'Build your own computer')]//../..//span[@class='product-subtotal']" should contain text "$2,630.00"
    Then element with xpath "//tr[@class='order-total']/td/span/strong" should contain text "$2,630.00"
    And I wait for 5 sec


#    Homework

    Scenario: Adding items to the cart and then delete all
      Given I open url "https://nop-qa.portnov.com/"
      Then I mouse over element with xpath "//li/a[contains(text(), 'Apparel')]"
      Then I wait for element with xpath "//li/a[contains(text(), 'Accessories ')]" to be present
      Then I click on element with xpath "//li/a[contains(text(), 'Accessories ')]"
      Then I wait for element with xpath "//div[@class='page-title']//h1[contains(text(), 'Accessories')]" to be present
      Then I click on element with xpath "//h2[@class='product-title']/a[contains(text(), 'Ray Ban Aviator Sunglasses')]"
      Then I click on element with xpath "//button[@id='add-to-cart-button-33']"
      When I mouse over element with xpath "//li/a[contains(text(), 'Electronics')]"
      And I wait for element with xpath "//a[@href='/camera-photo']" to be present
      Then I click on element with xpath "//a[@href='/camera-photo']"
      Then I click on element with xpath "//h2[@class='product-title']/a[contains(text(), 'Nikon D5500 DSLR')]"
      Then I wait for element with xpath "//div[contains(text(), 'Nikon D5500 DSLR - Black')]" to be present
      Then I click on element with xpath "//button[@id='add-to-cart-button-14']"
      Then I click on element with xpath "//span[contains(text(),'Shopping cart')]"
      Then I wait for element with xpath "//div[@class='page-title']/h1[contains(text(), 'Shopping cart')]" to be present
      Then I click on element with xpath "(//button[@class='remove-btn'])[1]"
      Then I wait for element with xpath "(//button[@class='remove-btn'])" to be present
      Then I click on element with xpath "(//button[@class='remove-btn'])"
      Then element with xpath "//div[@class='page shopping-cart-page']" should contain text "Your Shopping Cart is empty"
      Then I wait for 3 sec


