*** Settings ***
Library    SeleniumLibrary
Library    ../BrowserActions.py
Resource    ../resources/variables.robot

*** Keywords ***
Open Context Menu Page
    Open Browser    ${CONTEXT_MENU_URL}    ${BROWSER}
    Maximize Browser Window

Trigger Context Menu Using JS
    Execute Javascript
    ...    var evt = new MouseEvent('contextmenu', {bubbles: true, cancelable: true, view: window});
    ...    document.getElementById("hot-spot").dispatchEvent(evt)

Get Alert Message From Context Menu
    ${text}=    Fetch Alert And Accept
    [Return]    ${text}

Close Browser Window
    Close Browser
