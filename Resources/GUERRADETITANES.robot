*** Keywords ***
SET VARIABLES
    #### LOGIN
    ${URL}    Set Global Variable    ${URL}    http://guerradetitanes.net/?sign_in=1
    ${BASE_URL}    Set Global Variable    ${BASE_URL}    http://guerradetitanes.net

    #### CAMPANHA
    ${ATAQUE_CAMPANHA}    Set Global Variable    ${ATAQUE_CAMPANHA}    xpath=//*[text()="Atacar el monstruo"]

    #### ARENA
    ${ATACAR_ARENA}    Set Global Variable    ${ATACAR_ARENA}    xpath=//*[text()="Atacar"]
