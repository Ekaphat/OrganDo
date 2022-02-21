*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url_login}    http://127.0.0.1:5501/Frontend/login.html


${Vfirstname}       John
${Vlastname}        Doe
${Vemail}           John.doe@gmail.com
${Vpass}            CuttiesJohn
${Vdob}             11111987
${Vnid}             1588699935674
${VphoneNum}        0978345527
${VemergencyNum}    0657837724
${Vaddress}         London, England


${Iemail}           John123.com
${Inid}             123456789
${IphoneNum}        09123456789
${IemergencyNum}    065783772a



***Test Cases ***
Opening login page using Chrome
    Open Browser    ${url_login}    ${browser}
    Maximize Browser window
    SeleniumLibrary.Set Selenium Speed  0.5

Navigate/Input register information
    Click Link  id=register
    Input Text  name=email  ${Iemail} 
    Input Text  name=citizenid  ${Inid}          
    Input Text  name=phoneNumber  ${IphoneNum} 
    Input Text  name=emerContact  ${IemergencyNum} 
    Scroll Element Into View  xpath:/html/body/div/div/div[12]

Click register btn
    Click Button  name=signup

Choose Ok On Next Confirmation 
    Handle Alert  action=ACCEPT
    Handle Alert  action=ACCEPT
    Handle Alert  action=ACCEPT
    Handle Alert  action=ACCEPT
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

Navigate/Input register information
    Click Link  id=register
    Input Text  name=firstname  ${Vfirstname}
    Input Text  name=lastname  ${Vlastname}  
    Input Text  name=email  ${Vemail} 
    Input Text  name=password  ${Vpass} 
    Input Text  name=dateOfbirth  ${Vdob} 
    
    Click Element  id=gender
    Mouse Down    xpath:/html/body/div/div/div[5]/select
    Click Element  id=male
    
    Click Element  id=bloodType
    Mouse Down    xpath:/html/body/div/div/div[6]/select
    Click Element  id=posA

    Input Text  name=citizenid  ${Vnid}          
    Input Text  name=phoneNumber  ${VphoneNum} 
    Input Text  name=emerContact  ${VemergencyNum} 
    Input Text  name=address  ${Vaddress} 
    Scroll Element Into View  xpath:/html/body/div/div/div[12]
Click register btn
    Click Button  name=signup


