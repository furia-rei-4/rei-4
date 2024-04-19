*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Batalha do altar
    #### ANTES DE COMEÇAR
    Go To    ${BASE_URL}/altars/?from=fights
    Wait Until Element Is Visible    //*[@class="btn"]
    Click Element    //*[@class="btn"]

    ${COUNT}    Set Variable    0
    ${ESPERA}    Set Variable    True

    WHILE    ${ESPERA}
        ${IMG}    Run Keyword And Return Status
        ...    Page Should Not Contain Image
        ...    /images/town/hd/altars.jpg
        ...    3s

        ${ESPERA}    Run Keyword And Return Status
        ...    Wait Until Element Is Visible
        ...    //*[@class="btn"]
        ...    2s

        # ${COUNT}=    Evaluate    ${COUNT} + 1
        # Log To Console    ${COUNT}

        # IF    '${COUNT}' > 100
        #    BREAK
        # END

        IF    ${IMG}
            Log to Console    Início da batalha pelo altar!
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
            Log To Console    Batalha pelo altar encerrada!
            BREAK
        END

        # ${COUNT}=    Evaluate    ${COUNT} + 1
        # Log To Console    ${COUNT}

        # IF    '${COUNT}' > 120
        #    BREAK
        # END
    END

    Go To    ${BASE_URL}/altars/?close=reward
