*** Settings ***
Resource            ../Steps/Arena.robot
Resource            ../Steps/Login.robot
Resource            ../Steps/Donation.robot
Resource            ../Resources/TIWAR_RO.robot

Suite Setup         TIWAR_RO.SET VARIABLES
Suite Teardown      Close Browser


*** Test Cases ***
Arena Qa General
    CT: Login    Qa General    74343684    ${True}
    Run Keyword And Continue On Failure    CT: Lutar na arena
    Run Keyword And Continue On Failure    Doar

Arena Qa Linkedin
    # Import Resource    C:\\Users\\yamfo\\Documents\\Projetos\\furia-teste\\Steps\\RO3.robot
    CT: Login    Qa Linkedin    74343684    ${True}
    Run Keyword And Continue On Failure    CT: Lutar na arena
    Run Keyword And Continue On Failure    Doar

Arena Qa Fighter
    CT: Login    Qa Fighter    74343684    ${True}
    Run Keyword And Continue On Failure    CT: Lutar na arena
    Run Keyword And Continue On Failure    Doar

Arena Qa Attacker
    CT: Login    Qa Attacker    74343684    ${True}
    Run Keyword And Continue On Failure    CT: Lutar na arena
    Run Keyword And Continue On Failure    Doar

Arena Qa Guardian
    CT: Login    Qa Guardian    74343684    ${True}
    Run Keyword And Continue On Failure    CT: Lutar na arena
    Run Keyword And Continue On Failure    Doar

Arena Qa Assassin
    CT: Login    Qa Assassin    74343684    ${True}
    Run Keyword And Continue On Failure    CT: Lutar na arena
    Run Keyword And Continue On Failure    Doar

Arena Qa Knight
    CT: Login    Qa Knight    74343684    ${True}
    Run Keyword And Continue On Failure    CT: Lutar na arena
    Run Keyword And Continue On Failure    Doar

Arena Qa Defender
    CT: Login    Qa Defender    74343684    ${True}
    Run Keyword And Continue On Failure    CT: Lutar na arena
    Run Keyword And Continue On Failure    Doar

Arena Qa Paladin
    CT: Login    Qa Paladin    74343684    ${True}
    Run Keyword And Continue On Failure    CT: Lutar na arena
    Run Keyword And Continue On Failure    Doar
