*** Settings ***
Library    SeleniumLibrary
Resource   ../pages/broken_images_page.robot
Resource   ../pages/login_page.robot
Suite Setup    Open Broken Images Page
Suite Teardown    Close The Browser

*** Test Cases ***
Detect Broken and Valid Images
    ${srcs}=    Get All Image Sources
    ${result}=  Check Images And Log Broken    @{srcs}
    ${valid}=   Set Variable    ${result[0]}
    ${broken}=  Set Variable    ${result[1]}
    Log    ✅ Total valid images: ${valid}
    Log    ❌ Total broken images: ${broken}

