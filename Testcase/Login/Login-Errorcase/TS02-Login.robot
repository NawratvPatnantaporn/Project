*** Settings ***
Documentation   Test Login into We Are You website
Library    SeleniumLibrary

*** Test Cases ***
TC-T203 Login without email and password
    Open Browser    http://localhost:5173/  Chrome  
    Maximize Browser Window
    Set Screenshot Directory    without-email-password
    Capture Page Screenshot 
    Click Element    //*[@id="root"]/div/div[4]/header/div/div/nav/a[3]
    Sleep    2
    Capture Page Screenshot 
    Click Button    //*[@id="root"]/div/div[4]/div/div/div[1]/form/button
    Sleep   2
    Capture Page Screenshot
    
TC-T204 Login with only email
    Open Browser    http://localhost:5173/  Chrome  
    Maximize Browser Window
    Set Screenshot Directory    with-only-email
    Capture Page Screenshot 
    Click Element    //*[@id="root"]/div/div[4]/header/div/div/nav/a[3]
    Sleep    2
    Capture Page Screenshot 
    Input Text  email   nawarat25@gmail.com
    Sleep    2
    Capture Page Screenshot
    Click Button    //*[@id="root"]/div/div[4]/div/div/div[1]/form/button
    Sleep   2
    Capture Page Screenshot

TC-T205 Login with only password
    Open Browser    http://localhost:5173/  Chrome  
    Maximize Browser Window
    Set Screenshot Directory    with-only-password
    Capture Page Screenshot 
    Click Element    //*[@id="root"]/div/div[4]/header/div/div/nav/a[3]
    Sleep    2
    Capture Page Screenshot 
    Input Text  password   1339900785631
    Sleep    2
    Capture Page Screenshot
    Click Button    //*[@id="root"]/div/div[4]/div/div/div[1]/form/button
    Sleep   2
    Capture Page Screenshot

TC-T206 Login with invalid email
    Open Browser    http://localhost:5173/  Chrome  
    Maximize Browser Window
    Set Screenshot Directory    with-invalid-email
    Capture Page Screenshot 
    Click Element    //*[@id="root"]/div/div[4]/header/div/div/nav/a[3]
    Sleep    2
    Capture Page Screenshot 
    Input Text  email   nawarat29@gmail.com
    Capture Page Screenshot
    Input Text  password   1339900785631
    Capture Page Screenshot
    Sleep    2
    Capture Page Screenshot
    Click Button    //*[@id="root"]/div/div[4]/div/div/div[1]/form/button
    Sleep   2
    Capture Page Screenshot

TC-T207 Login with invalid password
    Open Browser    http://localhost:5173/  Chrome  
    Maximize Browser Window
    Set Screenshot Directory    with-invalid-password
    Capture Page Screenshot 
    Click Element    //*[@id="root"]/div/div[4]/header/div/div/nav/a[3]
    Sleep    2
    Capture Page Screenshot 
    Input Text  email   nawarat25@gmail.com
    Capture Page Screenshot
    Input Text  password   1339900785632
    Capture Page Screenshot
    Sleep    2
    Capture Page Screenshot
    Click Button    //*[@id="root"]/div/div[4]/div/div/div[1]/form/button
    Sleep   2
    Capture Page Screenshot

TC-T208 Logged in with correct email and password but account was deleted
    Open Browser    http://localhost:5173/  Chrome  
    Maximize Browser Window
    Set Screenshot Directory    account-was-deleted
    Capture Page Screenshot 
    Click Element    //*[@id="root"]/div/div[4]/header/div/div/nav/a[3]
    Sleep    2
    Capture Page Screenshot 
    Input Text  email   nawarat25@gmail.com
    Capture Page Screenshot
    Input Text  password   1339900785631
    Capture Page Screenshot
    Sleep    2
    Capture Page Screenshot
    Click Button    //*[@id="root"]/div/div[4]/div/div/div[1]/form/button
    Sleep   2
    Capture Page Screenshot
