from selenium import webdriver
import tempfile

def get_chrome_options():
    options = webdriver.ChromeOptions()

    # Incognito mode prevents credential popups and session cache
    options.add_argument("--incognito")

    # Maximize browser and disable unwanted UI
    options.add_argument("--start-maximized")
    options.add_argument("--disable-save-password-bubble")
    options.add_argument("--disable-blink-features=AutomationControlled")
    options.add_argument("--disable-features=AutofillServerCommunication,PasswordManagerEnabled")
    options.add_argument("--disable-popup-blocking")
    options.add_argument("--disable-notifications")
    options.add_argument("--disable-extensions")

    # Prevent Chrome’s internal credential service
    prefs = {
        "credentials_enable_service": False,
        "profile.password_manager_enabled": False
    }
    options.add_experimental_option("prefs", prefs)

    return options
