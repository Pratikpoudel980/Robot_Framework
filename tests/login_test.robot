*** Settings ***
Library     SeleniumLibrary
Library    Process
Resource    ../pages/login_page.robot
Resource    ../resources/variables.robot
Suite Setup     Open Login Page
Suite Teardown  Close The Browser

*** Test Cases ***

Login With Valid Credentials
    Provide input and submit    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Handle Alert If Present
    Page Should Show Successful Login
    Logout

Login With Invalid Username and Valid Password
    [Documentation]    Loops through invalid usernames and checks for error message
    FOR    ${USERNAME}    IN    @{INVALID_USERS}
        Provide input and submit    ${USERNAME}    ${VALID_PASSWORD}
        Page Should Show Login Error
        Log  Invalid login attempt with username: ${USERNAME}
        Reload Page
    END
    Close The Browser
