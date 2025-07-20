*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    RequestsLibrary
Library    String
Library    BuiltIn
Resource   ../resources/variables.robot

*** Keywords ***

Open Broken Images Page
    Open Browser    ${BROKEN_IMAGES_URL}    ${BROWSER}
    Maximize Browser Window


Get All Image Sources
    @{images}=    Get WebElements    xpath=//img
    ${src_list}=    Create List
    FOR    ${img}    IN    @{images}
        ${src}=    Get Element Attribute    ${img}    src
        Append To List    ${src_list}    ${src}
    END
    [Return]    ${src_list}

Check Images And Log Broken
    [Arguments]    @{src_list}
    Create Session    check    http://the-internet.herokuapp.com
    ${valid}=    Create List
    ${broken}=   Create List
    FOR    ${src}    IN    @{src_list}
        ${relative_path}=    Replace String    ${src}    http://the-internet.herokuapp.com    ''
        ${resp}=    GET On Session    check    ${relative_path}    expected_status=any
        Log    ${src} => ${resp.status_code}
        Run Keyword If    '${resp.status_code}' == '200'
        ...    Append To List    ${valid}    ${src}
        ...  ELSE
        ...    Append To List    ${broken}    ${src}
    END
    ${valid_count}=    Get Length    ${valid}
    ${broken_count}=   Get Length    ${broken}
    Log    Valid Images: ${valid}
    Log    Broken Images: ${broken}
    Log    Total Valid: ${valid_count}
    Log    Total Broken: ${broken_count}
    [Return]    ${valid}    ${broken}

