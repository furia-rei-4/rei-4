*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
CT: Trocar gold
    Go to    ${BASE_URL}/trade/exchange

    Wait Until Element Is Visible    xpath=//div[@class="menuList"]/li[1]/a
    Click Element    xpath=//div[@class="menuList"]/li[1]/a
