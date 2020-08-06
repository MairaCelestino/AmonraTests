***Settings***
Documentation       Aqui teremos a estrutura base do projeto, o selenium é importando aqui

Library         SeleniumLibrary

Resource        kws.robot
Resource        elements.robot

***Variables***
${URL}          http://amonra2:9005/netpa/page

***Keywords***
Sucess Loginn
         [tags]          login_sucess
         Dado que acesso a página principal 
         Quando submeto o meu utilizador "mariacp"
         E a palavra-chave "a" 
         E clico em Entrar 
         Então devo ser autenticado
##Hooks (Ganchos)
Open Session
    Open Browser    about:blank     chrome
    Set Selenium Implicit Wait   5

Close Session
    Capture Page Screenshot
    Close Browser