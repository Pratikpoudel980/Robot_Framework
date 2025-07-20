*** Settings ***
Library    SeleniumLibrary
Resource   ../pages/file_upload_page.robot
Resource   ../pages/login_page.robot
Suite Setup    Open File Upload Page
Suite Teardown    Close The Browser

*** Test Cases ***

Upload a File Successfully
    Upload File
    Sleep  2s
    Verify File Upload Success
