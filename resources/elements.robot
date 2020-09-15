***Settings***
Documentation       Aqui temos o mapeamento dos elementos e localizadores

***Variables***
#Login Scenario
${REGISTER}              id:loginregisterLink
${USER}                  id:textfield-1019-inputEl     ##xpath=//input[contains(@type, 'text')]
${PASS}                  css:input[type='password']
${BOTAO_ENTRAR}          id:button-1024-btnInnerEl    
${TOMEI_CONH}            xpath://*[@id="notificacoesNetpa_OK-btnInnerEl"]                 
${BOTAO_TOMEI_CONH}      xpath://*[@id="notificacoesNetpa_OK"]
${DIV_ALERT}             xpath://div[@class="ajs-content"]
${BOTAO_OK}              xpath://button[@class="ajs-button ajs-ok"]

#Book Rooms
${LINK_RERSEVAR_SALA}       xpath://*[@id="allservices"]/tbody/tr[1]/td[3]/a[9]
${ElEMENTO_RESERVAR_SALA}   xpath://*[@id="contenttwocolumns"]/h2
${BOTAO_RESERVAR_SALA}      xpath://*[@id="button-1054-btnInnerEl"]
${BOTAO_OK_RESERVA}         xpath://button[@id="reservarSalaDialog_ok-btnEl"]
${BOTAO_OK_AVISOS}          xpath://button[@class="ajs-button ajs-ok"]
${BOTAO_CANCELAR}           xpath://button[@id="reservarSalaDialog_cancel-btnEl"]
${SAIR}                     xpath://*[@id="headerTopButtons"]/a
${ANO_LETIVO}
${INSTITUICAO}
${DATA_PRETENDIDA}
${HORARIO_INICIO}
${DURACAO}
${TIPO_OCUPACAO}
${SALA}
${OBSERVACOES}

