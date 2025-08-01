
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
import time

# Initialize WebDriver (Make sure you have chromedriver installed and in PATH)
driver = webdriver.Chrome()

try:
    # Example: Test YouTube Video Playback
    driver.get("https://www.youtube.com")

    # Wait for the page to load
    time.sleep(3)

    # Accept cookies if prompted
    try:
        accept_btn = driver.find_element(By.XPATH, "//button[contains(text(), 'Accept')]")
        accept_btn.click()
    except:
        pass  # No cookie prompt

    # Click on the first video on homepage
    first_video = driver.find_element(By.ID, "video-title")
    first_video.click()

    # Wait for video to load
    time.sleep(5)

    # Check if video player is visible
    video_player = driver.find_element(By.CLASS_NAME, "html5-video-player")
    if video_player.is_displayed():
        print("✅ Video is playing.")
    else:
        print("❌ Video player not found.")

finally:
    # Close the browser
    driver.quit()
