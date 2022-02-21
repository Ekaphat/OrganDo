*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url_login}    http://127.0.0.1:5501/Frontend/login.html

${Vuser}         John.doe@gmail.com
${Vpass}         CuttiesJohn

${Iaddress}         London, England
${IphoneNum}        0978345527
${IemergencyNum}    0657837724
${Icurrentpass}     JohnJ
${Inewpass}         HandsomeJohn
${Iconfirmpass}     HandsomeJohn

${Vaddress}         Bangkok, Thailand
${VphoneNum}        0853475596
${VemergencyNum}    0962245861
${Vcurrentpass}     CuttiesJohn
${Vnewpass}         HandsomeJohn
${Vconfirmpass}     HandsomeJohn

***Test Cases ***
Opening login page using Chrome
    Open Browser    ${url_login}    ${browser}
    Maximize Browser window
    SeleniumLibrary.Set Selenium Speed  0.5

Insert user and password
    Input Text  name=email  ${Vuser} 
    Input Text  name=password   ${Vpass} 
    Click Button  name=login

Navigate to updated info page
    Scroll Element Into View  xpath:/html/body/footer
    Click Button  name=updateInfobtn
    Input Text  name=adderss  ${Iaddress}
    Input Text  name=phoneNumber  ${IphoneNum}
    Input Text  name=emerContact  ${IemergencyNum}
    Input Text  name=password  ${Icurrentpass}
    Input Text  name=newPass1  ${Inewpass}
    Input Text  name=newPass2  ${Iconfirmpass}

Click save btn
    Click Button  name=saveall
    Handle Alert  action=ACCEPT
    Sleep  1s




***Test Cases ***
Opening login page using Chrome
    Open Browser    ${url_login}    ${browser}
    Maximize Browser window
    SeleniumLibrary.Set Selenium Speed  0.5

Insert user and password
    Input Text  name=email  ${Vuser} 
    Input Text  name=password   ${Vpass}    
    Click Button  name=login

Navigate to updated info page
    Scroll Element Into View  xpath:/html/body/footer
    Click Button  name=updateInfobtn
    Input Text  name=adderss  ${Vaddress}
    Input Text  name=phoneNumber  ${VphoneNum}
    Input Text  name=emerContact  ${VemergencyNum}
    Input Text  name=password  ${Vcurrentpass}
    Input Text  name=newPass1  ${Vnewpass}
    Input Text  name=newPass2  ${Vconfirmpass}

Click save btn
    Click Button  name=saveall