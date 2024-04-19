*** Keywords ***
SET VARIABLES
    #### LOGIN
    ${URL}    Set Global Variable    ${URL}    http://tiwar.ro/?sign_in=1
    ${BASE_URL}    Set Global Variable    ${BASE_URL}    http://tiwar.ro

    #### CAMPANHA
    ${ATAQUE_CAMPANHA}    Set Global Variable    ${ATAQUE_CAMPANHA}    xpath=//*[text()="Atac monstru "]

    #### ARENA
    ${ARENA}    Set Global Variable    ${ARENA}    xpath=//*[text()="Arenă"]
    ${ATACAR_ARENA}    Set Global Variable    ${ATACAR_ARENA}    xpath=//*[text()="Atac"]

    #### CARREIRA
    ${CARREIRA}    Set Global Variable    ${CARREIRA}    xpath=//*[text()="Carieră"]
    ${ATAQUE_CARREIRA_0}    Set Global Variable    ${ATAQUE_CARREIRA_0}    xpath=//*[text()="Atac 0/5"]
    ${ATAQUE_CARREIRA_1}    Set Global Variable    ${ATAQUE_CARREIRA_1}    xpath=//*[text()="Atac 1/5"]
    ${ATAQUE_CARREIRA_2}    Set Global Variable    ${ATAQUE_CARREIRA_2}    xpath=//*[text()="Atac 2/5"]
    ${ATAQUE_CARREIRA_3}    Set Global Variable    ${ATAQUE_CARREIRA_3}    xpath=//*[text()="Atac 3/5"]
    ${ATAQUE_CARREIRA_4}    Set Global Variable    ${ATAQUE_CARREIRA_4}    xpath=//*[text()="Atac 4/5"]
