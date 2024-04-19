*** Settings ***
Resource            ../Steps/Gold.robot
Resource            ../Steps/Login.robot
Resource            ../Resources/TIWAR_RO.robot

Suite Setup         TIWAR_RO.SET VARIABLES
Suite Teardown      Close Browser


*** Test Cases ***
Arena Qa General
    CT: Login    Qa General    74343684    ${True}
    Gold.CT: Trocar gold

Arena Qa Linkedin
    CT: Login    Qa Linkedin    74343684    ${True}
    Gold.CT: Trocar gold

Arena Qa Fighter
    CT: Login    Qa Fighter    74343684    ${True}
    Gold.CT: Trocar gold

Arena Qa Attacker
    CT: Login    Qa Attacker    74343684    ${True}
    Gold.CT: Trocar gold

Arena Qa Guardian
    # Import Resource    C:\\Users\\yamfo\\Documents\\Projetos\\furia-teste\\Steps\\RO6.robot

    CT: Login    Qa Guardian    74343684    ${True}
    Gold.CT: Trocar gold

Arena Qa Assassin
    CT: Login    Qa Assassin    74343684    ${True}
    Gold.CT: Trocar gold

Arena Qa Knight
    CT: Login    Qa Knight    74343684    ${True}
    Gold.CT: Trocar gold

Arena Qa Defender
    CT: Login    Qa Defender    74343684    ${True}
    Gold.CT: Trocar gold

Arena Qa Paladin
    CT: Login    Qa Paladin    74343684    ${True}
    Gold.CT: Trocar gold
