*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${ICON_AXIS}            xpath=//img[contains(@height,'28')]
#${MY_ACCOUNT}           xpath=//a[@class='nav-link text-dark'][contains(.,'${EMAIL_LOGIN}')]
${LOGOUT_BTN}           id=logout


*** Keywords ***

Definir email como variável global
    Set Suite Variable     ${EMAIL_LOGIN}             ${EMAIL}

