*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Vale dos imortais
    #### ANTES DE COMEÇAR
    Go To    ${BASE_URL}/undying/?from=fights
    Wait Until Element Is Visible    //*[@class="btn"]
    Click Element    //*[@class="btn"]

    ${COUNT}    Set Variable    0
    ${ESPERA}    Set Variable    True

    WHILE    ${ESPERA}
        ${IMG}    Run Keyword And Return Status
        ...    Page Should Not Contain Image
        ...    /images/town/hd/undying.jpg
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
            Log to Console    Início da batalha do vale dos imortais!
            BREAK
        ELSE
            Reload Page
        END
    END

    ${ATAQUE_PLAYER}    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    //*[@class="btn"]

    ${COUNT}    Set Variable    0

    WHILE    ${ATAQUE_PLAYER}
        ${ATAQUE_PLAYER}    Run Keyword And Return Status
        ...    Wait Until Element Is Visible
        ...    //*[@class="btn"]

        ${IMG}    Run Keyword And Return Status
        ...    Page Should Contain Image
        ...    /images/town/hd/undying.jpg
        ...    1s

        IF    ${ATAQUE_PLAYER}
            Click Element    //*[@class="btn"]
            Sleep    5s
        END

        IF    ${IMG}
            Log To Console    Batalha do vale encerrada!
            BREAK
        END

        # ${COUNT}=    Evaluate    ${COUNT} + 1
        # Log To Console    ${COUNT}

        # IF    '${COUNT}' > 120
        #    BREAK
        # END
    END
