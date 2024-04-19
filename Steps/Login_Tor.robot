*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${CaminhoGeckodriver}       C:\\Users\\yamfo\\AppData\\Local\\Programs\\Python\\Python310\\Scripts\\geckodriver.exe
${CaminhoFirefoxExe}        C:\\Users\\yamfo\\Desktop\\Tor Browser\\Browser\\firefox.exe


*** Keywords ***
CT: Login
    [Arguments]    ${USER_NAME}    ${USER_PASSWORD}

    ${options}=    Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Create Webdriver
    ...    Firefox
    ...    executable_path=${CaminhoGeckodriver}
    ...    options=${options}
    ...    firefox_binary=${CaminhoFirefoxExe}

    Sleep    2s

    Go To    ${URL}
    Sleep    2s

    Run Keyword And Continue On Failure    Press Keys    None    ENTER

    Sleep    2s

    Run Keyword And Continue On Failure    Press Keys    None    ENTER

    Sleep    5s

    Go To    ${URL}

    Wait Until Element Is Visible    //*[@id="login"]
    Input Text    //*[@id="login"]    ${USER_NAME}

    Wait Until Element Is Visible    //input[@type="password"]
    Input Text    //input[@type="password"]    ${USER_PASSWORD}

    Wait Until Element Is Visible    //input[@type="submit"]
    Click Element    //input[@type="submit"]

    Log To Console    Login realizado com sucesso: ${USER_NAME}
