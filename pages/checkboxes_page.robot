*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Keywords ***

Open Checkbox Page
    Open Browser    ${CHECKBOX_URL}    ${BROWSER}
    Maximize Browser Window

Select Both Checkboxes
    Select Checkbox   ${CHECKBOX1}
    Select Checkbox    ${CHECKBOX2}

Deselect Both Checkboxes
    Unselect Checkbox    ${CHECKBOX1}
    Unselect Checkbox    ${CHECKBOX2}

Verify Checkbox States
    Checkbox Should Be Selected    ${CHECKBOX1}
    Checkbox Should Be Selected    ${CHECKBOX2}
