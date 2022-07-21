*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${URL}              http://10.0.0.58:8126/Identity/Account/Login?ReturnUrl=%2F
${BROWSER}          chrome
${BROWSER_FF}       firefox


*** Keywords ***

Abrir Navegador
    Open Browser    browser=${BROWSER_FF}
    Maximize Browser Window   

Fechar Navegador
    Close All Browsers