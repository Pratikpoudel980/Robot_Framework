*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Keywords ***
Open JavaScript Alert Page
    Open Browser    ${JS_ALERT_URL}    ${BROWSER}
    Maximize Browser Window

Click JS Alert and Accept
    Click Element    ${JS_ALERT_BUTTON}
    Handle Alert     ACCEPT
    Element Text Should Be    ${JS_RESULT_TEXT}    You successfully clicked an alert

Click JS Confirm and Dismiss
    Click Element    ${JS_CONFIRM_BUTTON}
    Handle Alert     DISMISS
    Element Text Should Be    ${JS_RESULT_TEXT}    You clicked: Cancel

Click JS Confirm and Accept
    Click Element    ${JS_CONFIRM_BUTTON}
    Handle Alert     ACCEPT
    Element Text Should Be    ${JS_RESULT_TEXT}    You clicked: Ok

Click JS Prompt and Enter Text
    Click Element    ${JS_PROMPT_BUTTON}
    Input Text Into Alert    This is a test
    Element Text Should Be    ${JS_RESULT_TEXT}    You entered: This is a test

