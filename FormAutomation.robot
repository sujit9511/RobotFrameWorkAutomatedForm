*** Settings ***
Documentation       MyFormTesting

Library             SeleniumLibrary


*** Variables ***
${url}      https://sujit9511.github.io/Registration-Form/


*** Test Cases ***
Save User
    Open Browser    ${url}    browser=edge
    Maximize Browser Window
    Input Text    locator=fname    text=Robot
    Input Text    locator=lname    text=One
    Input Text    locator=email    text=robotone@gmail.com
    Click Element    locator=male
    Select From List By Index    //*[@id="dropdown"]    1
    Sleep    time_=2

Search User
    Input Text    locator=//*[@id="root"]/div/div/div[1]/div/label/input    text=dummyone@gmail.com
    Click Button    locator=//*[@id="root"]/div/div/div[1]/div/button
    Sleep    time_=2

Update User
    Click Button    locator=//*[@id="root"]/div/div/button
    Input Text    locator=//*[@id="root"]/div/div/div[3]/form/label[1]/input    clear=True    text=DaDummy
    Input Text    locator=//*[@id="root"]/div/div/div[3]/form/label[2]/input    clear=Yes    text=Two
    Input Text    locator=//*[@id="root"]/div/div/div[3]/form/label[4]/input    clear=1    text=Male
    Select From List By Index    //*[@id="root"]/div/div/div[3]/form/label[5]/select    2

Close Browser
    Sleep    time_=5
    Close Browser
