*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url_login}    http://127.0.0.1:5501/Frontend/login.html

${Vuser}         John.doe@gmail.com
${Vpass}         CuttiesJohn

***Test Cases ***
Opening login page using Chrome
    Open Browser    ${url_login}    ${browser}
    Maximize Browser window
    SeleniumLibrary.Set Selenium Speed  0.5

Insert user and password to login
    Input Text  name=email  ${Vuser} 
    Input Text  name=password   ${Vpass}    
    Click Button  name=login

Navigate to visual card page
    Click Button  name=visualcardbtn 