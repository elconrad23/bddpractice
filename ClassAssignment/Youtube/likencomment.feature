Feature: YouTube - Like and Comment

  Scenario: Like a video
    Given I am logged in and watching a video
    When I click the like button
    Then the video should show one like added

  Scenario: Comment on a video
    Given I am logged in and watching a video
    When I scroll to the comments section
    And I type "Nice tutorial!" and click Comment
    Then my comment should be visible below the video

  Scenario: Delete my comment
    Given I am logged in and have commented on a video
    When I click the three dots and select Delete
    Then my comment should be removed