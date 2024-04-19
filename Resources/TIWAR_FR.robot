*** Keywords ***
SET VARIABLES
    #### LOGIN
    ${URL}    Set Global Variable    ${URL}    http://tiwar.fr/?sign_in=1
    ${BASE_URL}    Set Global Variable    ${BASE_URL}    http://tiwar.fr

    #### CAMPANHA
    ${ATAQUE_CAMPANHA}    Set Global Variable    ${ATAQUE_CAMPANHA}    xpath=//*[text()="Attaquer un monstre"]

    #### ARENA
    ${ATACAR_ARENA}    Set Global Variable    ${ATACAR_ARENA}    xpath=//*[text()="Attaquer"]
