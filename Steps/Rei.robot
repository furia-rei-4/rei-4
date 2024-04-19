*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Rei dos imortais
    #### ANTES DE COMEÇAR
    Go To    ${BASE_URL}/king

    ${ESPERA}    Set Variable    True

    WHILE    ${ESPERA}
        ${ESPERA}    Run Keyword And Return Status
        ...    Wait Until Element Is Visible
        ...    //*[@class="btn"]

        IF    ${ESPERA}
            Click Element    //*[@class="btn"]
            Sleep    3s
        ELSE
            BREAK
        END
    END

    #### ATÉ ACABAR O EVENTO
    ${ATAQUE_PLAYER}    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    //*[@class="fight_buttons"]/a[1]

    WHILE    ${ATAQUE_PLAYER}
        ${ATAQUE_PLAYER}    Run Keyword And Return Status
        ...    Wait Until Element Is Visible
        ...    //*[@class="fight_buttons"]/a[1]

        IF    ${ATAQUE_PLAYER}
            Click Element    //*[@class="fight_buttons"]/a[1]
            ${PLAYER_NAME}    Get Text    //*[@class="rght mlr5 mt5"]/span[@class="nwr"]
            ${PLAYER_NAME_2}    Get Text    //*[@class="rght mlr5 mt5"]
            ${PLAYER_NAME_3}    Get Text    //*[@class="nwr"]

            Log To Console    M1: '${PLAYER_NAME}'
            Log To Console    M2: '${PLAYER_NAME_2}'
            Log To Console    M3: '${PLAYER_NAME_3}'

            Sleep    5s
        ELSE
            BREAK
        END
    END
