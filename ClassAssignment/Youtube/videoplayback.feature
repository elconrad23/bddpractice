Feature: Video Playback on YouTube

  Scenario: Watch a video from homepage
    Given I am on the YouTube homepage
    When I click on a video thumbnail
    Then the video should start playing

  Scenario: Play/Pause video
    Given I am watching a video
    When I click the pause button
    Then the video should stop playing

  Scenario: Adjust volume
    Given I am watching a video
    When I click the volume icon and increase the volume
    Then the volume level should change

  