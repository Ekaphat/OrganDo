*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url_login}    http://127.0.0.1:5501/Frontend/login.html

${Vuser}         John.doe@gmail.com
${Vpass}         CuttiesJohn

${VorganName}   Heart
${VorgName}     Siriraj
${VgenName}     General Info.

***Test Cases ***
Opening home page using Chrome
    Open Browser    ${url_login}    ${browser}
    Maximize Browser window
    SeleniumLibrary.Set Selenium Speed  0.5

Insert user and password to login
    Input Text  name=email  ${Vuser} 
    Input Text  name=password   ${Vpass}    
    Click Button  name=login

Click donation info btn
    Scroll Element Into View  xpath:/html/body/footer
    Click Button  name=donationinfobtn

Enter the organ name/organization name/general donation information
    Input Text  name=searchInput  ${VorganName}
    Sleep  2s
    Input Text  name=searchInput  ${VorgName}
    Sleep  2s
    Input Text  name=searchInput  ${VgenName} 


 