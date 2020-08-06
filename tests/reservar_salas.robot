***Settings***
Documentation           Suite dos testes do ecram Reservar Salas

Library         SeleniumLibrary
Resource        ../resources/base.robot

Suite Setup     Open Session
Test Setup      Sucess Loginn
Test Teardown   Close Session  ### Suite Teardown só fecha o browser quando finalizar todos os cenários

***Test Cases***
Reservar Salas  
        [tags]          reservar_sala
        Quando clico no link "Reservar Salas"
        E clico em "Reservar Sala" 
        E preencho todos os obrigatórios
        Então clico em OK
        Devo ver a Situação "Em Apreciação"

Mensagens de Validação
        Dado que estou autenticado 
        Quando clico no link "Reservar Salas"
        E clico em "Reservar Sala" 
        Então clico em OK
        Devo ver a mensagem "Existem campos que não estão preenchidos ou contêm valores inválidos!"

   

        