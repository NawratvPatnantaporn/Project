*** Settings ***
Documentation   Test Registation and Use Gmail.
Library    SeleniumLibrary
# Resource    utilsFunction.robot

*** Variables ***
${expectedText}    Sign in

*** Test Cases ***
TC-S0101 Registation Gmail for Personal
    Open Browser    https://workspace.google.com/intl/th/gmail/    Chrome
    Capture Page Screenshot
    Click Element    xpath://*[@id="root"]/div[1]/header/div/div[5]/gws-dropdown-button/div
    Capture Page Screenshot
    Click Element    xpath://*[@id="root"]/div[1]/header/div/div[5]/gws-dropdown-button/a[1]
    Capture Page Screenshot
    Input Text    firstName    API
    Input Text    lastName    OK
    Capture Page Screenshot
    Click Element    xpath://*[@id="collectNameNext"]/div/button
    Capture Page Screenshot
    Sleep    5
    Input Text    day    9
    Click Element    xpath://*[@id="month"]/option[4]
    Input Text    year    2000
    Click Element    xpath://*[@id="gender"]/option[3]
    Capture Page Screenshot
    Click Element    xpath://*[@id="birthdaygenderNext"]/div/button
    Capture Page Screenshot
    Sleep    5
    Click Element    xpath://*[@id="yDmH0d"]/c-wiz/div/div[2]/div/div/div/form/span/section/div/div/div[1]/div[1]/div/span/div[1]/div/div[1]
    Click Element    xpath://*[@id="next"]/div/button
    Capture Page Screenshot
    [Teardown]    Sleep    300

TC-S0104 Verify Text Signin
    [Tags]    csi403
    Open Browser    https://www.gmail.com    Chrome
    Maximize Browser Window
    Sleep    5
    Element Text Should Be    //*[@id="headingText"]/span    ${expectedText}
    Capture Page Screenshot 
    [Teardown]    Sleep    300

TC-S0105 SCMS For Student
    [Tags]    SCMS
    Open Browser    https://studentscms.spu.ac.th/estudent/estudentlogin1.cfm    Chrome
    Maximize Browser Window
    Sleep    3
    Capture Page Screenshot
    Input Text    username    65072713
    Input Text    password    1339900768391
    Capture Page Screenshot
    Click Element    //*[@id="userForm"]/div[4]/button
    Sleep    3
    Capture Page Screenshot
    Click Element    //*[@id="formDetail"]/div/a
    Sleep    3
    Capture Page Screenshot
    Click Element    //*[@id="clickmenu01a"]/button
    Sleep    3
    Capture Page Screenshot
    Click Element    //*[@id="clickmenu01a"]/div/div/div/div/div/div[1]
    Sleep    3
    Capture Page Screenshot
    Switch Window    NEW
    Sleep    3
    Capture Page Screenshot
    Element Text Should Be    //*[@id="stdid"]    65072713
    Sleep    3
    Capture Page Screenshot 