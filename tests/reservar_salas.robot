***Settings***
Documentation           Suite dos testes do ecram Reservar Salas

Library         SeleniumLibrary
Resource        ../resources/base.robot

Suite Setup     Open Session
Test Setup      Sucess Loginn
Suite Teardown   Close Session  ### Suite Teardown só fecha o browser quando finalizar todos os cenários

***Test Cases***
Reservar Salas  
        [tags]          reservar_sala
        Quando clico no link "Reservar Salas"
        E clico em "Reservar Sala" 
        E preencho todos os obrigatórios
        Então clico em OK
        Devo ver a Situação "Em Apreciação"

Mensagens de Validação
        [tags]          reservarSala_ValoresInvalidos
        Quando clico no link "Reservar Salas"
        E clico em "Reservar Sala"
        Então clico em OK
        Devo ver a mensagem "As suas alterações NÃO FORAM gravadas"
        E Faço Logout

   

        