*** Settings ***
Library     SeleniumLibrary
# Library    SikuliLibrary


*** Keywords ***
Abandonar coliseu
    Go To    ${BASE_URL}/coliseum/

    ${RANK_23}    Set Variable    True

    WHILE    ${RANK_23}
        ${RANK_23}    Run Keyword And Return Status
        ...    Page Should Contain Image
        ...    /images/coliseum/rangs/23.png
        ...    1s
        ${STAR}    Run Keyword And Return Status
        ...    Page Should Contain Image
        ...    /images/coliseum/stars/0.png
        ...    1s

        IF    '${RANK_23}' == 'True' and '${STAR}' == 'True'    BREAK

        IF    '${RANK_23}' == 'False'
            ${RANK_23}    Set Variable    True

            ${ESPERA}    Set Variable    True

            WHILE    ${ESPERA}
                ${ESPERA}    Run Keyword And Return Status
                ...    Wait Until Element Is Visible
                ...    //*[@class="btn"]

                IF    ${ESPERA}    Click Element    //*[@class="btn"]

                ${ATAQUE_BUTTON}    Run Keyword And Return Status
                ...    Wait Until Page Contains Element
                ...    //*[@class="fight_buttons"]/a[2]    3s

                IF    ${ATAQUE_BUTTON}    BREAK
            END
            Sleep    1s
            Go To    ${BASE_URL}/?out_gate_confirm=true
            Sleep    1s
            Go To    ${BASE_URL}/coliseum/
            Sleep    1s

            ${ESPERA2}    Set Variable    True

            WHILE    ${ESPERA2}
                ${HREF}    Run Keyword And Return Status
                ...    Wait Until Element Is Visible
                ...    //*[@href="/common/skulltournament/"]    2s

                IF    ${HREF}    BREAK

                Reload Page
            END
        END
    END
