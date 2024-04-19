*** Settings ***
Library     SeleniumLibrary    3s


*** Keywords ***
CT: Lutar na arena
    Run Keyword And Continue On Failure    ARENA
    Run Keyword And Continue On Failure    FALHA
    Run Keyword And Continue On Failure    Lutar na Carreira
    Run Keyword And Continue On Failure    Participar do rei dos imortais
    Run Keyword And Continue On Failure    Participar do vale dos imortais
    Run Keyword And Continue On Failure    Participar do altar
    Run Keyword And Continue On Failure    Participar do coliseu do clã
    Run Keyword And Continue On Failure    CAVERNA
    Run Keyword And Continue On Failure    Lutar na Acampamento

    Run Keyword And Continue On Failure    CABANA MISSÕES
    Run Keyword And Continue On Failure    CABANA COLEÇÕES
    Run Keyword And Continue On Failure    CABANA MEDALHAS
    Run Keyword And Continue On Failure    CABANA RELÍQUIAS
    Run Keyword And Continue On Failure    DUNGEON

ARENA
    Go To    ${BASE_URL}/arena/

    ${STATUS}    Set Variable    True

    FOR    ${counter}    IN RANGE    40
        Log To Console    ${counter}° ataque na arena
        
        Wait Until Element Is Visible    ${ATACAR_ARENA}
        Click Element    ${ATACAR_ARENA}

        #${STATUS}    Run Keyword And Return Status    Get Text    //*[@id="topdiv"]/div[1]/div[5]/div/a[1]/span/span
        #/${STATUS}    Run Keyword And Return Status
        #...    Page Should Contain Image
        #...    /images/alchemy/potion.png
        #...    2s
    END

CABANA MISSÕES
    Go To    ${BASE_URL}/quest

    ${STATUS_QUEST}    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    //*[@class="block_light"]/div[2]/a

    WHILE    ${STATUS_QUEST}
        Click Element    //*[@class="block_light"]/div[2]/a

        ${STATUS_QUEST}    Run Keyword And Return Status
        ...    Wait Until Element Is Visible
        ...    //*[@class="block_light"]/div[2]/a

        IF    '${STATUS_QUEST}' != '${True}'    BREAK
    END

    ${STATUS_CHESS}    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    //*[@class="nbtn1 b_green w90"]

    WHILE    ${STATUS_CHESS}
        Click Element    //*[@class="nbtn1 b_green w90"]

        ${STATUS_CHESS}    Run Keyword And Return Status
        ...    Wait Until Element Is Visible
        ...    //*[@class="nbtn1 b_green w90"]

        IF    '${STATUS_CHESS}' != '${True}'    BREAK
    END

CABANA COLEÇÕES
    Go To    ${BASE_URL}/collector/

    ${STATUS}    Set Variable    True

    WHILE    ${STATUS}
        ${STATUS}    Run Keyword And Return Status
        ...    Wait Until Element Is Visible
        ...    //*[@class="btn"]

        IF    ${STATUS}    Click Element    //*[@class="btn"]    ELSE    BREAK

        ${URL_COLEÇÃO}    Get Location
        IF    '${URL_COLEÇÃO}' != '${BASE_URL}/collector/'    BREAK
    END

CABANA MEDALHAS
    Go To    ${BASE_URL}/medals/
    ${MEDALHA}    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    //*[@class="btn"]
    IF    ${MEDALHA}    Click Element    //*[@class="btn"]

CABANA RELÍQUIAS
    Go To    ${BASE_URL}/relic/
    ${RELIQUIAS}    Run Keyword And Return Status    Wait Until Element Is Visible    //*[@class="btn"]
    IF    ${RELIQUIAS}    Click Element    //*[@class="btn"]

Participar do vale dos imortais
    Go To    ${BASE_URL}/undying/?from=fights
    Wait Until Element Is Visible    //*[@class="btn"]
    Click Element    //*[@class="btn"]

Participar do rei dos imortais
    Go To    ${BASE_URL}/king/?from=fights
    Wait Until Element Is Visible    //*[@class="btn"]
    Click Element    //*[@class="btn"]

Participar do altar
    Go To    ${BASE_URL}/altars/?from=fights

    ${ALTAR_STATUS}    Run Keyword And Return Status    Wait Until Element Is Visible    //*[@class="btn"]
    IF    ${ALTAR_STATUS}
        Click Element    //*[@class="btn"]
    ELSE
        Go To    ${BASE_URL}/altars/?close=reward
        ${BTN}    Run Keyword And Return Status    Wait Until Element Is Visible    //*[@class="btn"]
        IF    ${BTN}    Click Element    //*[@class="btn"]
    END

Participar do coliseu do clã
    Go To    ${BASE_URL}/clancoliseum/?from=fights

    ${COLISEU}    Run Keyword And Return Status    Wait Until Element Is Visible    //*[@class="btn"]
    IF    ${COLISEU}
        Click Element    //*[@class="btn"]
    ELSE
        Go To    ${BASE_URL}/clancoliseum/?close=reward
        ${BTN}    Run Keyword And Return Status    Wait Until Element Is Visible    //*[@class="btn"]
        IF    ${BTN}    Click Element    //*[@class="btn"]
    END

Lutar na Acampamento
    Go To    ${BASE_URL}/campaign/

    FOR    ${index}    IN RANGE    3
        Wait Until Element Is Visible    //*[@class="btn"]
        Click Element    //*[@class="btn"]

        Wait Until Element Is Visible    //*[@class="btn"]
        Click Element    //*[@class="btn"]

        ${FIGHT_STATUS}    Set Variable    True

        WHILE    ${FIGHT_STATUS}
            ${FIGHT_STATUS}    Run Keyword And Return Status
            ...    Wait Until Element Is Visible
            ...    ${ATAQUE_CAMPANHA}

            IF    ${FIGHT_STATUS}
                Click Element    ${ATAQUE_CAMPANHA}
            ELSE
                BREAK
            END
        END

        Reload Page

        Wait Until Element Is Visible    //*[@class="btn"]
        Click Element    //*[@class="btn"]
    END

Lutar na Carreira
    Go to    ${BASE_URL}/career/

    ${ATAQUE_DISPONÍVEL}    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    //*[@class="nbtn1 b_red w130p"]

    WHILE    ${ATAQUE_DISPONÍVEL}
        Click Element    //*[@class="nbtn1 b_red w130p"]

        ${ATAQUE_DISPONÍVEL}    Run Keyword And Return Status
        ...    Wait Until Element Is Visible
        ...    //*[@class="nbtn1 b_red w130p"]
    END

    ${IMG}    Run Keyword And Return Status
    ...    Wait Until Page Does Not Contain Element
    ...    //*[@class="nbtn1 b_green2 w150p"]/span/img

    IF    ${IMG}    Click Element    //*[@class="nbtn1 b_green2 w150p"]/span

DUNGEON
    Go To    ${BASE_URL}/clandungeon/

    ${DUNGEON}    Run Keyword And Return Status
    ...    Wait Until Page Does Not Contain Element
    ...    //*[@class="btn"]/span/span/img

    FOR    ${index}    IN RANGE    11
        ${DUNGEON}    Run Keyword And Return Status
        ...    Wait Until Page Does Not Contain Element
        ...    //*[@class="btn"]/span/span/img

        IF    ${DUNGEON}
            ${BTN}    Run Keyword And Return Status    Wait Until Element Is Visible    //*[@class="btn"]/span/span
            IF    ${BTN}    Click Element    //*[@class="btn"]/span/span
        ELSE
            Log To Console    ATAQUES DISPONÍVEIS NA DUNGEON ESGOTADOS, VOLTE DEPOIS
            BREAK
        END
    END

CAVERNA
    Go To    ${BASE_URL}/cave/

    ${CAVE}    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    //*[@class="btn"]

    IF    ${CAVE}    Click Element    //*[@class="btn"]

EVENTO
    Go To    ${BASE_URL}/collfight
    ${BTN}    Run Keyword And Return Status    Wait Until Element Is Visible    //*[@class="btn"]
    IF    ${BTN}    Click Element    //*[@class="btn"]

FALHA
    Go To    ${BASE_URL}/fault/?group=2
    ${BTN}    Run Keyword And Return Status    Wait Until Element Is Visible    //*[@class="nbtn1 b_green2 w180pi"]

    WHILE    ${BTN}
        Click Element    //*[@class="nbtn1 b_green2 w180pi"]
        ${BTN}    Run Keyword And Return Status    Wait Until Element Is Visible    //*[@class="nbtn1 b_green2 w180pi"]
    END
