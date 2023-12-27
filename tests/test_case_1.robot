*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    firefox
${site_url}    https://opensource-demo.orangehrmlive.com/
${timeout}    10s


*** Test Cases ***
LoginTest
    Open Browser    ${site_url}        ${browser}
    ${username_locator}    Set Variable    xpath://input[@placeholder='Username']
    Wait Until Element Is Visible    ${username_locator}    ${timeout}
    Input Text    xpath://input[@placeholder='Username']    Admin
    Input Text    xpath://input[@placeholder='Password']    admin123 
    Click Element    xpath://button[@type='submit']
    Sleep    10s
    Element Should Be Visible    xpath://p[contains(text(), 'Collings')]
    Close Browser




*** Keywords ***