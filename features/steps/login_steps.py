from behave import given, when, then
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
import time

@given('the user navigates to the login page')
def step_open_login_page(context):
    context.driver = webdriver.Chrome()
    context.driver.get("http://localhost:8000/login")  # Adjust URL as needed

@when('the user enters valid credentials')
def step_enter_valid_credentials(context):
    context.driver.find_element(By.NAME, "registration_number").send_keys("valid_user")
    context.driver.find_element(By.NAME, "password").send_keys("valid_password")

@when('the user enters invalid credentials')
def step_enter_invalid_credentials(context):
    context.driver.find_element(By.NAME, "registration_number").send_keys("invalid_user")
    context.driver.find_element(By.NAME, "password").send_keys("wrong_password")

@when('clicks the login button')
def step_click_login(context):
    context.driver.find_element(By.XPATH, "//input[@value='Login']").click()
    time.sleep(2)  # wait for page to load

@then('the user should be redirected to the dashboard')
def step_redirect_dashboard(context):
    assert "dashboard" in context.driver.current_url.lower()
    context.driver.quit()

@then('the user should see an error message')
def step_see_error_message(context):
    assert "invalid" in context.driver.page_source.lower()
    context.driver.quit()
