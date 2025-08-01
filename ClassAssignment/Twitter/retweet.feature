Feature: Twitter - Retweeting

  Scenario: Retweet a tweet
    Given I see a tweet on my feed
    When I click the retweet button
    And I select "Retweet"
    Then the tweet should appear in my retweets

  Scenario: Retweet with a comment
    Given I see a tweet on my feed
    When I click the retweet button
    And I choose "Retweet with comment"
    And I enter a comment and click Tweet
    Then the tweet should appear with my comment

  Scenario: Undo a retweet
    Given I have retweeted a tweet
    When I click the retweet button again
    Then the tweet should be removed from my retweets