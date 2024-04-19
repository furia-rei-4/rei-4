*** Keywords ***
SET VARIABLES
    #### LOGIN
    ${URL}    Set Global Variable    ${URL}    http://tiwar.net/?sign_in=1
    ${BASE_URL}    Set Global Variable    ${BASE_URL}    http://tiwar.net

    #### CAMPANHA
    ${ATAQUE_CAMPANHA}    Set Global Variable    ${ATAQUE_CAMPANHA}    xpath=//*[text()="Attack monster"]

    #### ARENA
    ${ARENA}    Set Global Variable    ${ARENA}    xpath=//*[text()="Arena"]
    ${ATACAR_ARENA}    Set Global Variable    ${ATACAR_ARENA}    xpath=//*[text()="Attack"]

    #### CARREIRA
    ${CARREIRA}    Set Global Variable    ${CARREIRA}    xpath=//*[text()="Career"]
    ${ATAQUE_CARREIRA_0}    Set Global Variable    ${ATAQUE_CARREIRA_0}    xpath=//*[text()="Attack 0/5"]
    ${ATAQUE_CARREIRA_1}    Set Global Variable    ${ATAQUE_CARREIRA_1}    xpath=//*[text()="Attack 1/5"]
    ${ATAQUE_CARREIRA_2}    Set Global Variable    ${ATAQUE_CARREIRA_2}    xpath=//*[text()="Attack 2/5"]
    ${ATAQUE_CARREIRA_3}    Set Global Variable    ${ATAQUE_CARREIRA_3}    xpath=//*[text()="Attack 3/5"]
    ${ATAQUE_CARREIRA_4}    Set Global Variable    ${ATAQUE_CARREIRA_4}    xpath=//*[text()="Attack 4/5"]
