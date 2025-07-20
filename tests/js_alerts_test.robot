*** Settings ***
Library    SeleniumLibrary
Resource   ../pages/js_alerts_page.robot
Resource   ../pages/login_page.robot
Suite Setup    Open JavaScript Alert Page
Suite Teardown    Close The Browser

*** Test Cases ***

Accept JS Alert
    Click JS Alert and Accept

Dismiss JS Confirm Alert
    Click JS Confirm and Dismiss

Accept JS Confirm Alert
    Click JS Confirm and Accept

Enter Text in JS Prompt
    Click JS Prompt and Enter Text
