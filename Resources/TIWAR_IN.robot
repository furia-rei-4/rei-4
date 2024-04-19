*** Keywords ***
SET VARIABLES
    #### LOGIN
    ${URL}    Set Global Variable    ${URL}    http://in.tiwar.net/?sign_in=1
    ${BASE_URL}    Set Global Variable    ${BASE_URL}    http://in.tiwar.net

    #### CAMPANHA
    ${ATAQUE_CAMPANHA}    Set Global Variable    ${ATAQUE_CAMPANHA}    xpath=//*[text()="Attack monster"]

    #### ARENA
    ${ATACAR_ARENA}    Set Global Variable    ${ATACAR_ARENA}    //*[text()="Attack"]
