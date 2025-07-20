*** Variables ***
#variables for login 
${URL}          https://the-internet.herokuapp.com/login
${BROWSER}      Chrome
${VALID_USERNAME}    tomsmith
${VALID_PASSWORD}    SuperSecretPassword!
@{INVALID_USERS}    wronguser1    wronguser2    wronguser3
#variables for checkbox 
${CHECKBOX_URL}    https://the-internet.herokuapp.com/checkboxes
${CHECKBOX1}       xpath=(//input[@type="checkbox"])[1]
${CHECKBOX2}       xpath=(//input[@type="checkbox"])[2]
#variables for dropdown
${DROPDOWN_URL}      https://the-internet.herokuapp.com/dropdown
${DROPDOWN}          id=dropdown
${DROPDOWN_OPTION_1}    Option 1
${DROPDOWN_OPTION_2}    Option 2
#variables for JS alert
${JS_ALERT_URL}      https://the-internet.herokuapp.com/javascript_alerts
${JS_ALERT_BUTTON}   xpath=//button[text()="Click for JS Alert"]
${JS_CONFIRM_BUTTON}  xpath=//button[text()="Click for JS Confirm"]
${JS_PROMPT_BUTTON}  xpath=//button[text()="Click for JS Prompt"]
${JS_RESULT_TEXT}    id=result
#variables for file upload
${UPLOAD_URL}      https://the-internet.herokuapp.com/upload
${UPLOAD_INPUT}    id=file-upload
${UPLOAD_BUTTON}   id=file-submit
${UPLOAD_RESULT}   id=uploaded-files
${FILE_TO_UPLOAD}    ${CURDIR}/dummy.txt
#variables for broken image
${BROKEN_IMAGES_URL}    https://the-internet.herokuapp.com/broken_images
#variables for context menu
${CONTEXT_MENU_URL}    https://the-internet.herokuapp.com/context_menu

