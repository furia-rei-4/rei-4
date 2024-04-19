*** Settings ***
Resource            ../Steps/Login.robot
Resource            ../Steps/Arena.robot
Resource            ../Steps/Gold.robot
Resource            ../Resources/GUERRADETITANES.robot
Resource            ../Steps/Rei.robot
Resource            ../Steps/Altar.robot
Resource            ../Steps/Vale.robot
Resource            ../Steps/Coliseu_Abandonar.robot
Resource            ../Steps/Coliseu_Batalha.robot
Resource            ../Steps/TC.robot

Suite Setup         GUERRADETITANES.SET VARIABLES
Suite Teardown      Close Browser


*** Test Cases ***
Login
    CT: Login    Hot Woman    74343684    ${False}

Arena
    CT: Login    Hot Woman    74343684    ${False}
    Run Keyword And Continue On Failure    CT: Lutar na arena

Gold
    CT: Login    Hot Woman    74343684    ${False}
    Run Keyword And Continue On Failure    CT: Trocar gold

Rei
    CT: Login    Hot Woman    74343684    ${False}
    Run Keyword And Continue On Failure    Rei dos imortais

Batalhar
    CT: Login    Hot Woman    74343684    ${False}
    Batalhar no coliseu

Quit
    CT: Login    Hot Woman    74343684    ${False}
    Abandonar coliseu

Vale
    CT: Login    Hot Woman    74343684    ${False}
    Vale dos imortais

Altar
    CT: Login    Hot Woman    74343684    ${False}
    Batalha do altar

TC
    CT: Login    Hot Woman    74343684    ${False}
    Torneio do cla
