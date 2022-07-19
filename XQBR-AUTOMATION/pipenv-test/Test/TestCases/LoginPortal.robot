*** Settings ***
Resource       ../../Test/Steps/LoginPortal.robot
#C:\XQBR-AUTOMATION\pipenv-test\Test\Steps\LoginPortal.robot


*** Variables ***


*** Test Cases ***

Não permitir login com dados incorretos
    DADO o acesso ao Portal de Ativação
    QUANDO o login com usuário com email "meuemail@gmail.com" e senha "dificil"
    ENTÃO o sistema deverá exibir mensagem de erro ""

Realizar login com sucesso
    DADO o acesso ao Portal de Ativação
    QUANDO o login com usuário com email "meuemail@gmail.com" e senha "dificil" 
    ENTÃO o sistema deverá exibir a tela de consulta