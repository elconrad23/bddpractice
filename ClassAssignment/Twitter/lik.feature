Feature: Twitter - Liking a Tweet

  Scenario: Like a tweet
    Given I see a tweet on the homepage
    When I click the like (heart) icon
    Then the tweet should be added to my liked tweets

  Scenario: Unlike a tweet
    Given I have liked a tweet
    When I click the like icon again
    Then the tweet should be removed from my liked tweets

  Scenario: View liked tweets
    Given I am on my Twitter profile
    When I click the "Likes" tab
    Then I should see all tweets I’ve liked
