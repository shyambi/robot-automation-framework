*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    firefox
${site_url}    https://opensource-demo.orangehrmlive.com/


*** Test Cases ***
LoginTest
    Open Browser    ${site_url}        ${browser}
    Input Text    xpath://input[@placeholder='Username']    Admin
    Input Text    xpath://input[@placeholder='Password']    admin123 
    Click Element    xpath://button[@type='submit']
    Close Browser




*** Keywords ***