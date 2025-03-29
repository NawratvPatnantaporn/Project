*** Settings ***
Documentation   Test Register into We Are You website
Library    SeleniumLibrary

*** Test Cases ***
TC-T101 Register Employees Account 
    Open Browser    http://localhost:5173/  Chrome  
    Maximize Browser Window
    Capture Page Screenshot 
    Click Element    //*[@id="root"]/div/div[4]/header/div/div/nav/a[2]
    Sleep    2
    Capture Page Screenshot 
    Input Text  email   nawarat25@gmail.com
    Capture Page Screenshot
    Input Text  name   Nawarat Patnantaporn
    Capture Page Screenshot
    Input Text  department   IT
    Capture Page Screenshot
    Input Text  idcard   1339900785631
    Capture Page Screenshot
    Input Text  phonenumber   0435216221
    Capture Page Screenshot
    Input Text  password   1339900785631
    Capture Page Screenshot
    Sleep   2
    Capture Page Screenshot
    Click Button    //*[@id="root"]/div/div[4]/div/div/div[1]/form/button
    Sleep   2
    Capture Page Screenshot