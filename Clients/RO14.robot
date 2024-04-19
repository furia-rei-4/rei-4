*** Settings ***
Resource            ../Steps/Login.robot
Resource            ../Steps/Arena.robot
Resource            ../Steps/Gold.robot
Resource            ../Resources/TIWAR_RO.robot
Resource            ../Steps/Rei.robot
Resource            ../Steps/Altar.robot
Resource            ../Steps/Vale.robot
Resource            ../Steps/Coliseu_Abandonar.robot
Resource            ../Steps/Coliseu_Batalha.robot
Resource            ../Steps/TC.robot

Suite Setup         TIWAR_RO.SET VARIABLES
Suite Teardown      Close Browser


*** Test Cases ***
Login
    CT: Login    Tokyo Ghoul    74343684    ${False}

Arena
    Run Keyword And Continue On Failure    CT: Login    Tokyo Ghoul    74343684    ${False}
    Run Keyword And Continue On Failure    CT: Lutar na arena

Gold
    Run Keyword And Continue On Failure    CT: Login    Tokyo Ghoul    74343684    ${False}
    Run Keyword And Continue On Failure    CT: Trocar gold

Rei
    Run Keyword And Continue On Failure    CT: Login    Tokyo Ghoul    74343684    ${False}
    Run Keyword And Continue On Failure    Rei dos imortais

Batalhar
    Run Keyword And Continue On Failure    CT: Login    Tokyo Ghoul    74343684    ${False}
    Batalhar no coliseu

Quit
    Run Keyword And Continue On Failure    CT: Login    Tokyo Ghoul    74343684    ${False}
    Abandonar coliseu

Vale
    Run Keyword And Continue On Failure    CT: Login    Tokyo Ghoul    74343684    ${False}
    Vale dos imortais

Altar
    Run Keyword And Continue On Failure    CT: Login    Tokyo Ghoul    74343684    ${False}
    Batalha do altar

TC
    Run Keyword And Continue On Failure    CT: Login    Tokyo Ghoul    74343684    ${False}
    Torneio do cla
