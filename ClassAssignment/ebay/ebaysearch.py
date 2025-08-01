from selenium import webdriver
from selenium.webdriver.common.by import By
import time

driver = webdriver.Chrome()

try:
    driver.get("https://www.ebay.com")
    time.sleep(3)

    search_box = driver.find_element(By.ID, "gh-ac")
    search_box.send_keys("laptop")

    search_button = driver.find_element(By.ID, "gh-btn")
    search_button.click()
    time.sleep(3)

    results = driver.find_elements(By.CLASS_NAME, "s-item")
    if results:
        print("eBay search returned results.")
    else:
        print("No results found.")

finally:
    driver.quit()
