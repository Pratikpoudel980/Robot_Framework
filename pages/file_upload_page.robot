*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource   ../resources/variables.robot

*** Keywords ***

Open File Upload Page
    Open Browser    ${UPLOAD_URL}    ${BROWSER}
    Maximize Browser Window

Upload File
    Choose File    ${UPLOAD_INPUT}    ${FILE_TO_UPLOAD}
    Click Button   ${UPLOAD_BUTTON}

Verify File Upload Success
    Wait Until Element Is Visible    ${UPLOAD_RESULT}    timeout=3s
    Element Text Should Be           ${UPLOAD_RESULT}    dummy.txt
