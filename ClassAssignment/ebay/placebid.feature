Feature: Bidding on Auction Items

  Scenario: Place a valid bid on an auction item
    Given I am logged into eBay
    When I visit an active auction item page
    And I enter a higher bid than the current
    And I click "Place bid"
    Then my bid should be submitted successfully

  Scenario: Attempt to bid below current price
    Given I am on an auction item page
    When I enter a bid lower than the current highest
    And I click "Place bid"
    Then I should see an error saying "Bid too low"

  Scenario: Cancel a pending bid
    Given I have just placed a bid on an item
    When I go to my bids section
    And I click "Cancel bid"
    Then the bid should be withdrawn
