*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url_login}    http://127.0.0.1:5501/Frontend/login.html

${Vuser}         John.doe@gmail.com
${Vpass}         CuttiesJohn

${VorganName}   Lung
${Allergy}      Peanut
${Medication}   No
${Condition}    No

***Test Cases ***
Opening login page using Chrome
    Open Browser    ${url_login}    ${browser}
    Maximize Browser window
    SeleniumLibrary.Set Selenium Speed  0.5

Insert user and password to login
    Input Text  name=email  ${Vuser} 
    Input Text  name=password   ${Vpass}    
    Click Button  name=login

Navigate to search and see Donation info
    Scroll Element Into View  xpath:/html/body/footer
    Click Button  name=donationinfobtn
    Input Text  name=searchInput  ${VorganName}
    Click Link  id=lunginfo
    Sleep  2S
    Click Link  id=clickhere

Register to donate organ
    Input Text    name=allergy  ${Allergy}    
    Input Text    name=medication  ${Medication}
    Input Text    name=condition  ${Condition}

    Scroll Element Into View  xpath:/html/body/div/div/div[11]/button[1]
    Click Element  xpath:/html/body/div/div/div[7]/div/div/div[7]
    Click Element  xpath:/html/body/div/div/div[8]/div/div/div/label[1]
    Click Element  xpath:/html/body/div/div/div[10]/div/div/div

    Click Button  name=submitbtn
    Sleep  2S

Observe the number of needed organ was decresed
    Click Button  name=donationinfobtn
    Input Text  name=searchInput  ${VorganName}
    Click Link  id=lunginfo