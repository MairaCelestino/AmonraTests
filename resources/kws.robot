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
    Input Text          ${USER}       ${utilizador}  
    

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
    Sleep               5
    Execute JavaScript               window.scrollTo(0,800)

##Keyword do cenário login com user/password inexistente  
Então devo ver a mensagem "${expect_message}"
    Sleep              2
   
    #${DIV_ALERT}   ${expect_message}
Quando clico no link "Reservar Salas"
    Click Link         ${LINK_RERSEVAR_SALA}
E clico em "Reservar Sala"
    Wait Until Element Is Visible       xpath://*[@id="contenttwocolumns"]/h2  ##RESERVAR SALAS
    Sleep              2
    Click Link         ${BOTAO_RESERVAR_SALA}