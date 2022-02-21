*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url_login}    http://127.0.0.1:5501/Frontend/login.html

${Vuser}         John.doe@gmail.com
${Vpass}         CuttiesJohn

${Allergy}      Eggs, Shrimp
${Medication}   Clarityne
${Condition}    Diabetes

***Test Cases ***
Opening login page using Chrome
    Open Browser    ${url_login}    ${browser}
    Maximize Browser window
    SeleniumLibrary.Set Selenium Speed  0.5

Inuput user and password to login
    Input Text  name=email  ${Vuser} 
    Input Text  name=password   ${Vpass}    
    Click Button  name=login

Navigate to Organdonation form page and Click submit btn
    Scroll Element Into View  xpath:/html/body/footer
    Click Button  name=organregisbtn
    Click Button  name=submitbtn
    Handle Alert  action=ACCEPT
    Handle Alert  action=ACCEPT
    Handle Alert  action=ACCEPT
    Handle Alert  action=ACCEPT
    Handle Alert  action=ACCEPT
    Handle Alert  action=ACCEPT
    Sleep  1s




***Test Cases ***
Opening login page using Chrome
    Open Browser    ${url_login}    ${browser}
    Maximize Browser window
    SeleniumLibrary.Set Selenium Speed  0.5

Input user and password
    Input Text  name=email  ${Vuser} 
    Input Text  name=password   ${Vpass}    
    Click Button  name=login

Register to donate organ
    Scroll Element Into View  xpath:/html/body/footer
    Click Button  name=organregisbtn
    Input Text    name=allergy  ${Allergy}    
    Input Text    name=medication  ${Medication}
    Input Text    name=condition  ${Condition}
    Scroll Element Into View  xpath:/html/body/div/div/div[11]/button[1]
    Click Element  xpath:/html/body/div/div/div[7]/div/div/div[1]
    Click Element  xpath:/html/body/div/div/div[7]/div/div/div[7]
    Click Element  xpath:/html/body/div/div/div[8]/div/div/div/label[1]
    Click Element  xpath:/html/body/div/div/div[10]/div/div/div
    Click Button  name=submitbtn

