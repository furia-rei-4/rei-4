*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
CT: Login
    [Arguments]    ${USER_NAME}    ${USER_PASSWORD}

    ${profile}    Set Variable
    ...    --user-data-dir=C:\\Users\\yamfo\\AppData\\Local\\Google\\Chrome\\User Data\\Profile 1
    ${proxy}    Set Variable    --user-data-dir=C:\\Users\\yamfo\\AppData\\Local\\Google\\Chrome\\User Data\\Profile 1
    ${options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    ${profile}

    Create Webdriver    Chrome    options=${options}

    Go To    ${URL}

    Wait Until Element Is Visible    //*[@id="login"]
    Input Text    //*[@id="login"]    ${USER_NAME}

    Wait Until Element Is Visible    //input[@type="password"]
    Input Text    //input[@type="password"]    ${USER_PASSWORD}

    Wait Until Element Is Visible    //input[@type="submit"]
    Click Element    //input[@type="submit"]
