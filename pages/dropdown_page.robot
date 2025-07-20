*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Keywords ***

Open Dropdown Page
    Open Browser    ${DROPDOWN_URL}    ${BROWSER}
    Maximize Browser Window

Select Option 1
    Select From List By Label    ${DROPDOWN}    ${DROPDOWN_OPTION_1}

Select Option 2
    Select From List By Label    ${DROPDOWN}    ${DROPDOWN_OPTION_2}

Verify Option 1 Is Selected
    List Selection Should Be    ${DROPDOWN}    ${DROPDOWN_OPTION_1}

Verify Option 2 Is Selected
    List Selection Should Be    ${DROPDOWN}    ${DROPDOWN_OPTION_2}
