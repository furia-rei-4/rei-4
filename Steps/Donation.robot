*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Doar
    Go To    ${BASE_URL}/clan/151/money/

    Wait Until Element Is Visible    //input[@name="silver"]
    Input Text    //input[@name="silver"]    1000
    Sleep    2s
    Wait Until Element Is Visible    xpath=//*[text()="Finanțarea trezoreriei"]
    Click Element    xpath=//*[text()="Finanțarea trezoreriei"]
