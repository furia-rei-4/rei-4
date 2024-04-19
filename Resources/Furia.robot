*** Keywords ***
SET VARIABLES
    #### LOGIN
    ${URL}    Set Global Variable    ${URL}    https://furiadetitas.net/?sign_in=1
    ${BASE_URL}    Set Global Variable    ${BASE_URL}    https://furiadetitas.net

    #### CAMPANHA
    ${ATAQUE_CAMPANHA}    Set Global Variable    ${ATAQUE_CAMPANHA}    xpath=//*[text()="Ataque monstro"]

    #### ARENA
    ${ARENA}    Set Global Variable    ${ARENA}    xpath=//*[text()="Arena"]
    ${ATACAR_ARENA}    Set Global Variable    ${ATACAR_ARENA}    xpath=//*[text()="Atacar"]

    #### CARREIRA
    ${CARREIRA}    Set Global Variable    ${CARREIRA}    xpath=//*[text()="Carreira"]
    ${ATAQUE_CARREIRA_0}    Set Global Variable    ${ATAQUE_CARREIRA_0}    xpath=//*[text()="Atacar 0/5"]
    ${ATAQUE_CARREIRA_1}    Set Global Variable    ${ATAQUE_CARREIRA_1}    xpath=//*[text()="Atacar 1/5"]
    ${ATAQUE_CARREIRA_2}    Set Global Variable    ${ATAQUE_CARREIRA_2}    xpath=//*[text()="Atacar 2/5"]
    ${ATAQUE_CARREIRA_3}    Set Global Variable    ${ATAQUE_CARREIRA_3}    xpath=//*[text()="Atacar 3/5"]
    ${ATAQUE_CARREIRA_4}    Set Global Variable    ${ATAQUE_CARREIRA_4}    xpath=//*[text()="Atacar 4/5"]
