Feature: Shopping Cart on eBay

  Scenario: Add item to cart
    Given I am viewing a product page
    When I click "Add to cart"
    Then the item should appear in my shopping cart

  Scenario: View items in cart
    Given I have added items to my cart
    When I click on the cart icon
    Then I should see all the items I added

  Scenario: Remove item from cart
    Given there are multiple items in my cart
    When I click "Remove" next to an item
    Then that item should no longer be in the cart
