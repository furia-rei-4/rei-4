*** Keywords ***
SET VARIABLES
    #### LOGIN
    ${URL}    Set Global Variable    ${URL}    https://cn.tiwar.net/?sign_in=1
    ${BASE_URL}    Set Global Variable    ${BASE_URL}    https://cn.tiwar.net

    #### CAMPANHA
    ${ATAQUE_CAMPANHA}    Set Global Variable    ${ATAQUE_CAMPANHA}    xpath=//*[text()="攻击怪物"]

    #### ARENA
    ${ATACAR_ARENA}    Set Global Variable    ${ATACAR_ARENA}    //*[text()="攻击"]
