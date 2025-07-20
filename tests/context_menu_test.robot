*** Settings ***
Resource    ../resources/variables.robot
Resource    ../pages/context_menu_page.robot

*** Test Cases ***
Verify Context Menu Alert
    Open Context Menu Page
    Trigger Context Menu Using JS
    ${text}=    Get Alert Message From Context Menu
    Should Be Equal    ${text}    You selected a context menu
    Close Browser Window

