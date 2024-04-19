*** Keywords ***
SET VARIABLES
    #### LOGIN
    ${URL}    Set Global Variable    ${URL}    http://tiwar.pl/?sign_in=1
    ${BASE_URL}    Set Global Variable    ${BASE_URL}    http://tiwar.pl

    #### CAMPANHA
    ${ATAQUE_CAMPANHA}    Set Global Variable    ${ATAQUE_CAMPANHA}    xpath=//*[text()="Atakuj potwora"]

    #### ARENA
    ${ARENA}    Set Global Variable    ${ARENA}    xpath=//*[text()="Arena"]
    ${ATACAR_ARENA}    Set Global Variable    ${ATACAR_ARENA}    xpath=//*[text()="Atak"]

    #### CARREIRA
    ${CARREIRA}    Set Global Variable    ${CARREIRA}    xpath=//*[text()="Kariera"]
    ${ATAQUE_CARREIRA_0}    Set Global Variable    ${ATAQUE_CARREIRA_0}    xpath=//*[text()="Atak 0/5"]
    ${ATAQUE_CARREIRA_1}    Set Global Variable    ${ATAQUE_CARREIRA_1}    xpath=//*[text()="Atak 1/5"]
    ${ATAQUE_CARREIRA_2}    Set Global Variable    ${ATAQUE_CARREIRA_2}    xpath=//*[text()="Atak 2/5"]
    ${ATAQUE_CARREIRA_3}    Set Global Variable    ${ATAQUE_CARREIRA_3}    xpath=//*[text()="Atak 3/5"]
    ${ATAQUE_CARREIRA_4}    Set Global Variable    ${ATAQUE_CARREIRA_4}    xpath=//*[text()="Atak 4/5"]
