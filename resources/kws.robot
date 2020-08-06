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

##Keyword do cenário logion com user/password inexistente  
Então devo ver a mensagem "${expect_message}"
    Sleep              5
    Wait Until Element Contains      ${DIV_ALERT}   ${expect_message}
    Sleep              5
    Click Element                    ${BOTAO_OK} 
    Sleep              2
    Click Link          Reservar Salas
    Wait Until Element Is Visible       css:h2.h2style  ##RESERVAR SALAS
##Keyword do cenário Reservar Salas
Quando clico no link "Reservar Salas"
        Execute JavaScript window.scrollTo(0,200)
E clico em "Reservar Sala" 
E preencho todos os obrigatórios
        E seleciono os campos: Ano letivo "2019-20"
        E a Instituição "Escola Superior de Qualidade Digitalis"
        E a Data Pretendida "13/08/2020"
        E o Hora início "10:00" e a Duração "02:00"
        E o Tipo Ocupação "Outros"
        E a Sala "AVID 3D (CG-Edifício F - lotação 20)"
        E informo uma Observação "Teste Reserva Sala 1"
Então clico em OK
Devo ver a Situação "Em Apreciação"