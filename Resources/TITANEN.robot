*** Keywords ***
SET VARIABLES
    #### LOGIN
    ${URL}    Set Global Variable    ${URL}    http://titanen.mobi/?sign_in=1
    ${BASE_URL}    Set Global Variable    ${BASE_URL}    http://titanen.mobi

    #### CAMPANHA
    ${ATAQUE_CAMPANHA}    Set Global Variable    ${ATAQUE_CAMPANHA}    xpath=//*[text()="Monster angreifen"]

    #### ARENA
    ${ARENA}    Set Global Variable    ${ARENA}    xpath=//*[text()="Arena"]
    ${ATACAR_ARENA}    Set Global Variable    ${ATACAR_ARENA}    xpath=//*[text()="Angreifen"]

    #### CARREIRA
    ${CARREIRA}    Set Global Variable    ${CARREIRA}    xpath=//*[text()="Karriere "]
    ${ATAQUE_CARREIRA_0}    Set Global Variable    ${ATAQUE_CARREIRA_0}    xpath=//*[text()="Angreifen 0/5"]
    ${ATAQUE_CARREIRA_1}    Set Global Variable    ${ATAQUE_CARREIRA_1}    xpath=//*[text()="Angreifen 1/5"]
    ${ATAQUE_CARREIRA_2}    Set Global Variable    ${ATAQUE_CARREIRA_2}    xpath=//*[text()="Angreifen 2/5"]
    ${ATAQUE_CARREIRA_3}    Set Global Variable    ${ATAQUE_CARREIRA_3}    xpath=//*[text()="Angreifen 3/5"]
    ${ATAQUE_CARREIRA_4}    Set Global Variable    ${ATAQUE_CARREIRA_4}    xpath=//*[text()="Angreifen 4/5"]
