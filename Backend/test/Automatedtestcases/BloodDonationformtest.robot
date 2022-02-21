*** Settings ***
Library    SeleniumLibrary
Library    DateTime

*** Variables ***
${browser}      chrome
${url_login}    http://127.0.0.1:5501/Frontend/login.html

${Vdob}          11152021
${Vuser}         John.doe@gmail.com
${Vpass}         CuttiesJohn


***Test Cases ***
Opening login page using Chrome
    Open Browser    ${url_login}    ${browser}
    Maximize Browser window
    SeleniumLibrary.Set Selenium Speed  0.5

Insert user and password
    Input Text  name=email  ${Vuser} 
    Input Text  name=password   ${Vpass}    
    Click Button  name=login

Navigate to Blood donation form page
    Scroll Element Into View  xpath:/html/body/footer
    Click Button  name=bloodregisbtn

Click submit btn
    Click Button  name=submit
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

Insert user and password
    Input Text  name=email  ${Vuser} 
    Input Text  name=password   ${Vpass}    
    Click Button  name=login

Navigate to Blood donation form page
    Scroll Element Into View  xpath:/html/body/footer
    Click Button  name=bloodregisbtn

Validate user can select items from the the checkbox list   
    Click Element  xpath:/html/body/div/div/div[3]/div/div/div/label[1]/span
    Click Element  xpath:/html/body/div/div/div[3]/div/div/div/label[2]/span

Fill DateOfbirth
    Input Text  name=dateOfbirth  ${Vdob}   

Select Donation Place 
    Mouse Down  xpath://*[@id="place"]
    Click Element  id=Siriraj Hospital

Validate Agreement  
     Click Element  xpath:/html/body/div/div/div[5]/div/div/div/label/span

Click submit btn
    Click Button  name=submit

    
