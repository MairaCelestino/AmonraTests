***Settings***
Documentation           Aqui teremos todas as palavras chaves de aumtomação dos comportamentos

**Keywords***
Dado que acesso a página principal         
    Go To                ${URL}
    Title Should Be     Netpa página de entrada             ###Verify title page
  ##  Close Browser

Quando submeto o meu utilizador "${utilizador}"
    Click Element       ${REGISTER}
    #Sleep               2
    Click Element       ${USER}
    #Sleep               1
    Input Text          ${USER}      ${utilizador}    
    

E a palavra-chave "${password}" 
    #Sleep               1
    Input Text         ${PASS}     ${password}    
    Sleep              5

E clico em Entrar
   # Set Selenium Implicit Wait   5
    Click Element           ${BOTAO_ENTRAR}
   
    #Sleep               5

Então devo ser autenticado
    #Wait Until Page Contains       Tem inquéritos por preencher    15
    Sleep               5
    Wait Until Element Is Visible    ${TOMEI_CONH}
    Click Element                    ${BOTAO_TOMEI_CONH}

##Keyword do cenário logion com user inexistente  
Então devo ver a mensagem "${expect_message}"
    Sleep              5
    Wait Until Element Contains      ${DIV_ALERT}   ${expect_message}
    Sleep              5
    Click Element                    ${BOTAO_OK} 
    Sleep              2

##Keyword do cenário logion com password inexistente
#Então devo ver a mensagem "${expect_message_pass}"
 #   Wait Until Page Contains       ${expect_message_pass}
  #  Click Element                  OK