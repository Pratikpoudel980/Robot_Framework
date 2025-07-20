*** Settings ***
Library    SeleniumLibrary
Resource   ../pages/dropdown_page.robot
Resource   ../pages/login_page.robot
Suite Setup    Open Dropdown Page
Suite Teardown    Close The Browser

*** Test Cases ***

Select Option 1 from Dropdown
    Select Option 1
    Verify Option 1 Is Selected

Select Option 2 from Dropdown
    Select Option 2
    Verify Option 2 Is Selected

