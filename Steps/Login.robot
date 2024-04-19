*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/CN.robot


*** Keywords ***
CT: Login
    [Arguments]    ${USER_NAME}    ${USER_PASSWORD}    ${IP_MASK}

    ${PROXY}    Set Variable    --proxy-server=socks5://localhost:9050

    ${options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    IF    ${IP_MASK}    Call Method    ${options}    add_argument    ${PROXY}

    Create Webdriver    Chrome    options=${options}

    Go To    ${URL}

    Wait Until Element Is Visible    //*[@id="login"]
    Input Text    //*[@id="login"]    ${USER_NAME}

    Wait Until Element Is Visible    //input[@type="password"]
    Input Text    //input[@type="password"]    ${USER_PASSWORD}

    Wait Until Element Is Visible    //input[@type="submit"]
    Click Element    //input[@type="submit"]
