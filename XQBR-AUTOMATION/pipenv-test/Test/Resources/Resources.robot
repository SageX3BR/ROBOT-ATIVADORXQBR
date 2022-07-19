*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${URL}              http://10.0.0.51/
${BROWSER}          chrome
${BROWSER_FF}       firefox


*** Keywords ***

Abrir Navegador
    Open Browser    browser=${BROWSER_FF}
    Maximize Browser Window   