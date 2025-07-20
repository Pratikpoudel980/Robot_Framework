from robot.libraries.BuiltIn import BuiltIn

def fetch_alert_and_accept():
    seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
    driver = seleniumlib.driver
    alert = driver.switch_to.alert
    text = alert.text
    alert.accept()
    return text



