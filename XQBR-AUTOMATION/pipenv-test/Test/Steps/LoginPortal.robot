*** Settings ***
Resource      ../../Test/Resources/Resources.robot
Resource      ../../Test/PageObjects/PO_LoginPortal.robot


*** Variables ***


*** Keywords ***

DADO o acesso ao Portal de Ativação
    Abrir Navegador
    Go to               ${URL}



QUANDO o login com usuário com email ${EMAIL} e senha ${PASSWORD} 
    Click Element       ${INPUT_EMAIL}  
    Input Text          ${INPUT_EMAIL}            ${EMAIL}
    Click Element       ${INPUT_PASSWORD}
    Input Text          ${INPUT_PASSWORD}         ${PASSWORD} 



ENTÃO o sistema deverá exibir mensagem de erro ${MESSAGER_ERROR}
    Click Element       ${MESSAGER_ERROR_EMAIL}
    
     