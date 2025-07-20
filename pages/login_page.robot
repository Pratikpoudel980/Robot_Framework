*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/variables.robot
Library    ../BrowserConfig.py 
*** Keywords ***

Open Login Page
    ${options}=    Get Chrome Options
    Create Webdriver    Chrome    options=${options}
    Go To    ${URL}

Provide input and submit
    [Arguments]    ${username}    ${password}
    Input Text    id=username    ${username}
    Input Text    id=password    ${password}
    Click Button    xpath=//button[@type='submit']

Handle Alert If Present
    Run Keyword And Ignore Error    Handle Alert    ACCEPT

Page Should Show Successful Login
    Page Should Contain    Secure Area

Page Should Show Login Error
    Page Should Contain    Your username is invalid!

Logout
    Click Element    xpath=//*[@id="content"]/div/a
    Page Should Contain    Login Page

Close The Browser
    Close Browser
