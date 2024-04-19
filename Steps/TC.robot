*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Torneio do cla
    #### ANTES DE COMEÇAR
    Go To    ${BASE_URL}/clanfight/?from=fights
    Wait Until Element Is Visible    //*[@class="btn"]
    Click Element    //*[@class="btn"]

    ${COUNT}    Set Variable    0
    ${ESPERA}    Set Variable    True

    WHILE    ${ESPERA}
        ${IMG}    Run Keyword And Return Status
        ...    Page Should Not Contain Image
        ...    /images/town/hd/clantournament.jpg
        ...    3s

        ${ESPERA}    Run Keyword And Return Status
        ...    Wait Until Element Is Visible
        ...    //*[@class="btn"]
        ...    2s

        IF    ${IMG}
            Log to Console    Início da batalha do torneio de clãs!
            BREAK
        ELSE
            Reload Page
        END
    END

    ${ATAQUE_PLAYER}    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    //*[@class="fight_buttons"]/a[1]

    ${COUNT}    Set Variable    0

    WHILE    ${ATAQUE_PLAYER}
        ${ATAQUE_PLAYER}    Run Keyword And Return Status
        ...    Wait Until Element Is Visible
        ...    //*[@class="fight_buttons"]/a[1]

        IF    ${ATAQUE_PLAYER}
            Click Element    //*[@class="fight_buttons"]/a[1]
            Sleep    5s
        ELSE
            Log To Console    Batalha do clã encerrada!
            BREAK
        END
    END

    Go To    ${BASE_URL}/clanfight/?close=reward

Torneio do cla 2
    #### ANTES DE COMEÇAR
    Go To    ${BASE_URL}/clancoliseum/
    Wait Until Element Is Visible    //*[@class="btn"]
    Click Element    //*[@class="btn"]

    ${COUNT}    Set Variable    0
    ${ESPERA}    Set Variable    True

    WHILE    ${ESPERA}
        ${IMG}    Run Keyword And Return Status
        ...    Page Should Not Contain Image
        ...    /images/clancoliseum/rangs/4.png
        ...    3s

        ${ESPERA}    Run Keyword And Return Status
        ...    Wait Until Element Is Visible
        ...    //*[@class="btn"]
        ...    2s

        IF    ${IMG}
            Log to Console    Início da batalha do torneio de clãs!
            BREAK
        ELSE
            Reload Page
        END
    END

    ${ATAQUE_PLAYER}    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    //*[@class="fight_buttons"]/a[1]

    ${COUNT}    Set Variable    0

    WHILE    ${ATAQUE_PLAYER}
        ${ATAQUE_PLAYER}    Run Keyword And Return Status
        ...    Wait Until Element Is Visible
        ...    //*[@class="fight_buttons"]/a[1]

        IF    ${ATAQUE_PLAYER}
            Click Element    //*[@class="fight_buttons"]/a[1]
            Sleep    5s
        ELSE
            Log To Console    Batalha do clã encerrada!
            BREAK
        END
    END

    Go To    ${BASE_URL}/clancoliseum/?close=reward
