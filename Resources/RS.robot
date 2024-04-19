*** Keywords ***
SET VARIABLES
    #### LOGIN
    ${URL}    Set Global Variable    ${URL}    https://rs.tiwar.net/?sign_in=1
    ${BASE_URL}    Set Global Variable    ${BASE_URL}    https://rs.tiwar.net

    #### CAMPANHA
    ${ATAQUE_CAMPANHA}    Set Global Variable    ${ATAQUE_CAMPANHA}    xpath=//*[text()="Napadni cudoviste"]

    #### ARENA
    ${ATACAR_ARENA}    Set Global Variable    ${ATACAR_ARENA}    //*[text()="Napad"]
