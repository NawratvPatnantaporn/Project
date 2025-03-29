*** Settings ***
Documentation   Test Login into We Are You website
Library    SeleniumLibrary

*** Test Cases ***
TC-T201 Login success
    Open Browser    http://localhost:5173/  Chrome  
    Maximize Browser Window
    Set Screenshot Directory    employees
    Capture Page Screenshot 
    Click Element    //*[@id="root"]/div/div[4]/header/div/div/nav/a[3]
    Sleep    2
    Capture Page Screenshot 
    Input Text  email   nawarat25@gmail.com
    Capture Page Screenshot
    Input Text  password   1339900785631
    Capture Page Screenshot
    Sleep   2
    Capture Page Screenshot
    Click Button    //*[@id="root"]/div/div[4]/div/div/div[1]/form/button
    Sleep   2
    Capture Page Screenshot
    Click Element    //*[@id="root"]/div/div[4]/header/div/div/nav/a[3]
    Sleep   2
    Capture Page Screenshot

TC-T202 Login success admin
    Open Browser    http://localhost:5173/  Chrome  
    Maximize Browser Window
    Set Screenshot Directory    admin
    Capture Page Screenshot 
    Click Element    //*[@id="root"]/div/div[4]/header/div/div/nav/a[3]
    Sleep    2
    Capture Page Screenshot 
    Input Text  email   admin@gmail.com
    Capture Page Screenshot
    Input Text  password   1111111111111
    Capture Page Screenshot
    Sleep   2
    Capture Page Screenshot
    Click Button    //*[@id="root"]/div/div[4]/div/div/div[1]/form/button
    Sleep   2
    Capture Page Screenshot
    Click Element    //*[@id="root"]/div/div[4]/header/div/div/nav/a[3]
    Sleep   2
    Capture Page Screenshot
