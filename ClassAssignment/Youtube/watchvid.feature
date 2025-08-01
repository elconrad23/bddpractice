Feature: YouTube - Watching a Video

  Scenario: Click and play a video from search results
    Given I searched for "coding tutorial"
    When I click on a video
    Then the video should start playing

  Scenario: Pause and resume video playback
    Given a video is playing
    When I click the pause button
    Then the video should pause
    When I click play again
    Then the video should resume

  Scenario: Adjust video quality
    Given a video is playing
    When I click the settings icon and choose "480p"
    Then the video should switch to 480p


