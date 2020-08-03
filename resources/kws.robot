***Settings***
Documentation           Aqui teremos todas as palavras chaves de aumtomação dos comportamentos

**Keywords***
Dado que acesso a página principal         
    Go To                ${URL}
    Title Should Be     Netpa página de entrada             ###Verify title page
  ##  Close Browser

Quando submeto o meu utilizador "${utilizador}"
    Click Element       ${REGISTER}
    Sleep               2
    Click Element       ${USER}
    Sleep               1
    Input Text          ${USER}      ${utilizador}    
    

E a palavra-chave "${password}" 
    Sleep               1
    Input Text         ${PASS}     ${password}    

E clico em Entrar
    Click Element       ${BOTAO_ENTRAR}
    Sleep               5

Então devo ser autenticado
    Wait Until Page Contains       Tem inquéritos por preencher    15
    Click Element                  ${TOMEI_CONH} 