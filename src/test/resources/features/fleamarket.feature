Feature: Automate the FLEA Market

  @flea1
  Scenario: Landing Page
    Given I visit FLEA Market in the "qa" Environment
    Then I verify title is "e-commerce – Automation Practice Website" for the page
    When I verify and Click on "Mac" Category on the Top Bar
    Then I verify Cart Icon is present
    Then I verify Image Slider is present
    Then I verify Contact button functionality

    @flea2
    Scenario Outline: Landing page category tests
      Given I visit FLEA Market in the "qa" Environment
      Then I verify title is "e-commerce – Automation Practice Website" for the page
      Then I verify and Click on "<name>" Category on the Top Bar
#      Then I verify and click on the "<product>" in the selected category
      Examples:
      | name       | product |
      | Mac        | iMac    |
      |Mac         | Macbook Air|
      | iPhone     |Apple Watch Series 6|
      | Watch      |  iPhone 12        |
      | Accessories|  iPhone XR     |

#  @flea3
#  Scenario Outline: Landing page category tests
#    Given I visit FLEA Market in the "qa" Environment
#    Then I verify title is "e-commerce – Automation Practice Website" for the page
#    Then I click on element with xpath "//a[@data-product_id='58']"
#    Then I click on element with xpath "//a[@title='View cart']"
#    Then I type "2" into element with xpath "//input[@type='number']"
#    Then I wait 2 sec
#    Then I click on element with xpath "//button[contains(text(),'Update cart')]"
#    Then element with xpath "//div[contains(text(),'Cart updated.')]" should be displayed
#    Then I click on element with xpath "//a[@class='remove']"
#    Then element with xpath "//p[contains(text(),'Your cart is currently empty.')]" should be present
#    Then I verify and click on the "<product2>" in the selected category
#
#
#    Examples:
#       | product2 |
#      | iMac    |
#      | Macbook Air|
#      |Apple Watch Series 6|
#       |  iPhone 12        |
#      |  iPhone XR     |

  @flea3
  Scenario: Product Page
    Given I visit FLEA Market in the "qa" Environment
    Then I verify title is "e-commerce – Automation Practice Website" for the page
    When I wait and click on a product "Apple Watch Series 6" on the Landing Page
    When I verify Description contains text "Apple Watch Series 6"
    When I add "2" items to Cart and verify Cart

  @flea4
  Scenario Outline: Product Page Outline
    Given I visit FLEA Market in the "qa" Environment
    Then I verify title is "e-commerce – Automation Practice Website" for the page
    When I wait and click on a product "<product>" on the Landing Page
    When I verify Description contains text "<product>"
    When I add "2" items to Cart and verify Cart
    Examples:
      | product               |
      | Apple Watch Series 6  |
      | AirPods Pro           |
      | iMac                  |
      | IPhone 12             |
      | IPhone XR             |
      | Macbook Air           |



  