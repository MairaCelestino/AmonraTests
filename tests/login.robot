***Settings***
Documentation           Suite dos testes de login

Library         SeleniumLibrary
Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

**Test Cases***
Sucess Login
         Dado que acesso a página principal 
         Quando submeto o meu utilizador "mariacp"
         E a palavra-chave "a" 
         E clico em Entrar 
         Então devo ser autenticado

Login with nonexistent user
        [tags]          login_fail_user
        Dado que acesso a página principal
        Quando submeto o meu utilizador "maria"
        E a palavra-chave "a" 
        E clico em Entrar 
        Então devo ver a mensagem "Utilizador inexistente. Autenticação falhada."

Login with nonexistent password
        Dado que acesso a página principal 
        Quando submeto o meu utilizador "mariacp"
        E a palavra-chave "abc" 
        E clico em Entrar 
        Então devo ver a mensagem "Palavra chave errada. Autenticação falhada."