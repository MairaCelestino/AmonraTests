***Settings***
Documentation       Aqui teremos a estrutura base do projeto, o selenium é importando aqui

Library         SeleniumLibrary

Resource        kws.robot
Resource        elements.robot

***Variables***
${URL}          http://amonra2:9005/netpa/page

***Keywords***
##Hooks (Ganchos)
Open Session
    Open Browser    about:blank     chrome
    Set Selenium Implicit Wait   5

Close Session
    Capture Page Screenshot
    Close Browser