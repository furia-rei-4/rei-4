*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Batalhar no coliseu
    #### ANTES DE COMEÇAR
    Go To    ${BASE_URL}/coliseum/

    ${TINCTURE}    Set Variable    True
    # 0 od 25
    FOR    ${index}    IN RANGE    5
        ${ESPERA}    Set Variable    True

        WHILE    ${ESPERA}
            ${ESPERA}    Run Keyword And Return Status
            ...    Wait Until Element Is Visible
            ...    //*[@class="btn"]

            IF    ${ESPERA}    Click Element    //*[@class="btn"]

            ${ATAQUE_BUTTON}    Run Keyword And Return Status
            ...    Wait Until Element Is Visible
            ...    //*[@class="fight_buttons"]/a[2]    3s

            IF    ${ATAQUE_BUTTON}    BREAK
        END

        ${ATAQUE_PLAYER}    Run Keyword And Return Status
        ...    Wait Until Element Is Visible
        ...    //*[@class="fight_buttons"]/a[2]

        WHILE    ${ATAQUE_PLAYER}
            ${ATAQUE_PLAYER}    Run Keyword And Return Status
            ...    Wait Until Element Is Visible
            ...    //*[@class="fight_buttons"]/a[2]

            IF    ${ATAQUE_PLAYER}
                ${HP}    Get Text    //*[@class="nwr"]
                ${HP_MINIMO}    Set Variable    400

                IF    '${TINCTURE}' == 'True' and '${HP}' < '${HP_MINIMO}'
                    Click Element    //*[@class="fight_buttons"]/a[4]
                    ${TINCTURE}    Set Variable    False
                    Sleep    4s
                ELSE
                    Click Element    //*[@class="fight_buttons"]/a[2]
                    Sleep    4s
                END
            ELSE
                BREAK
            END
        END

        Go To    ${BASE_URL}/coliseum/quit
    END
