*** Settings ***
Library    SeleniumLibrary
Resource   ../pages/checkboxes_page.robot
Resource    ../pages/login_page.robot

*** Test Cases ***
Select and Verify Checkboxes
    Open Checkbox Page
    Select Both Checkboxes
    Verify Checkbox States
    Log    Both checkboxes are selected

Deselect and Verify Checkboxes
    Deselect Both Checkboxes
    Checkbox Should Not Be Selected    ${CHECKBOX1}
    Checkbox Should Not Be Selected    ${CHECKBOX2}
    Log  Checkboxes are deselected 
    Close The Browser
