*** Settings ***
Documentation   Test Register into We Are You website
Library    SeleniumLibrary

*** Test Cases ***
TC-T102 Register without any fields account
    Open Browser    http://localhost:5173/  Chrome  
    Maximize Browser Window
    Set Screenshot Directory    Register-without
    Capture Page Screenshot
    Click Element    //*[@id="root"]/div/div[4]/header/div/div/nav/a[2]
    Sleep   2
    Capture Page Screenshot
    Click Button    //*[@id="root"]/div/div[4]/div/div/div[1]/form/button
    Sleep   2
    Capture Page Screenshot

TC-T103 Register with already exists email 
    Open Browser    http://localhost:5173/  Chrome  
    Maximize Browser Window
    Set Screenshot Directory    ExistsEmail
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
    Input Text  idcard   1339900785632
    Capture Page Screenshot
    Input Text  phonenumber   0435216222
    Capture Page Screenshot
    Input Text  password   1339900785631
    Capture Page Screenshot
    Sleep   2
    Capture Page Screenshot
    Click Button    //*[@id="root"]/div/div[4]/div/div/div[1]/form/button
    Sleep   2
    Capture Page Screenshot
    
TC-T104 Register with already exists idcard 
    Open Browser    http://localhost:5173/  Chrome  
    Maximize Browser Window
    Set Screenshot Directory    ExistsIdcard
    Capture Page Screenshot
    Click Element    //*[@id="root"]/div/div[4]/header/div/div/nav/a[2]
    Sleep    2
    Capture Page Screenshot 
    Input Text  email   nawarat26@gmail.com
    Capture Page Screenshot
    Input Text  name   Nawarat Patnantaporn
    Capture Page Screenshot
    Input Text  department   IT
    Capture Page Screenshot
    Input Text  idcard   1339900785631
    Capture Page Screenshot
    Input Text  phonenumber   0435216222
    Capture Page Screenshot
    Input Text  password   1339900785631
    Capture Page Screenshot
    Sleep   2
    Capture Page Screenshot
    Click Button    //*[@id="root"]/div/div[4]/div/div/div[1]/form/button
    Sleep   2
    Capture Page Screenshot
    
TC-T105 Register with already exists phonenumber 
    Open Browser    http://localhost:5173/  Chrome  
    Maximize Browser Window
    Set Screenshot Directory    ExistsPhonenumber
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
    
TC-T106 Register with a password that is not all numbers
    Open Browser    http://localhost:5173/  Chrome  
    Maximize Browser Window
    Set Screenshot Directory    password-that-is-not-all-numbers
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
    Input Text  password   133990078563a
    Capture Page Screenshot
    Sleep   2
    Capture Page Screenshot
    Click Button    //*[@id="root"]/div/div[4]/div/div/div[1]/form/button
    Sleep   2
    Capture Page Screenshot
    
TC-T107 Register with a password that is less than 13 characters
    Open Browser    http://localhost:5173/  Chrome  
    Maximize Browser Window
    Set Screenshot Directory    password-that-is-less-than-13characters
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
    Input Text  password   133990078563
    Capture Page Screenshot
    Sleep   2
    Capture Page Screenshot
    Click Button    //*[@id="root"]/div/div[4]/div/div/div[1]/form/button
    Sleep   2
    Capture Page Screenshot
    
TC-T108 Register with a password that is less than 13 characters and that not all numbers
    Open Browser    http://localhost:5173/  Chrome  
    Maximize Browser Window
    Set Screenshot Directory    less-than-13characters-and-that-not-all-numbers
    Capture Page Screenshot
    Click Element    //*[@id="root"]/div/div[4]/header/div/div/nav/a[2]
    Sleep    2
    Capture Page Screenshot 
    Input Text  email   nawarat26@gmail.com
    Capture Page Screenshot
    Input Text  name   Nawarat Patnantaporn
    Capture Page Screenshot
    Input Text  department   IT
    Capture Page Screenshot
    Input Text  idcard   1339900785632
    Capture Page Screenshot
    Input Text  phonenumber   0435216222
    Capture Page Screenshot
    Input Text  password   1339900785A
    Capture Page Screenshot
    Sleep   2
    Capture Page Screenshot
    Click Button    //*[@id="root"]/div/div[4]/div/div/div[1]/form/button
    Sleep   2
    Capture Page Screenshot
    