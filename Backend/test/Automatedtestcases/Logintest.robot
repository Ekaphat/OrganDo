*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url_login}    http://127.0.0.1:5501/Frontend/login.html

${Vuser}         John.doe@gmail.com
${Ipass}         123

${Iuser}         John123.com
${Vpass}         CuttiesJohn

${Iuser}         John123.com
${Ipass}         123  

${Vuser}         John.doe@gmail.com
${Vpass}         CuttiesJohn

***Test Cases ***
Opening login page using Chrome
    Open Browser    ${url_login}    ${browser}
    Maximize Browser window
    SeleniumLibrary.Set Selenium Speed  0.5

Insert user and password
    Input Text  name=email  ${Vuser} 
    Input Text  name=password   ${Ipass}    
    Click Button  name=login
    Handle Alert  action=ACCEPT
    Sleep  1s

***Test Cases ***
Opening login page using Chrome
    Open Browser    ${url_login}    ${browser}
    Maximize Browser window
    SeleniumLibrary.Set Selenium Speed  0.5

Insert user and password
    Input Text  name=email  ${Iuser} 
    Input Text  name=password   ${Vpass}    
    Click Button  name=login
    Handle Alert  action=ACCEPT
    Sleep  1s

***Test Cases ***
Opening login page using Chrome
    Open Browser    ${url_login}    ${browser}
    Maximize Browser window
    SeleniumLibrary.Set Selenium Speed  0.5

Insert user and password
    Input Text  name=email  ${Iuser} 
    Input Text  name=password   ${Ipass}    
    Click Button  name=login
    Handle Alert  action=ACCEPT
    Sleep  1s

***Test Cases ***
Opening login page using Chrome
    Open Browser    ${url_login}    ${browser}
    Maximize Browser window
    SeleniumLibrary.Set Selenium Speed  0.5 

Click login btn
    Click Button  name=login
    Handle Alert  action=ACCEPT
    Sleep  1s




***Test Cases ***
Opening login page using Chrome
    Open Browser    ${url_login}    ${browser}
    Maximize Browser window
    SeleniumLibrary.Set Selenium Speed  0.5

Insert user and password to login
    Input Text  name=email  ${Vuser} 
    Input Text  name=password   ${Vpass}    
    Click Button  name=login




    
  
