*** Settings ***
Resource       ../../Test/Steps/LoginPortal.robot
#C:\XQBR-AUTOMATION\pipenv-test\Test\Steps\LoginPortal.robot


*** Variables ***


*** Test Cases ***

Não permitir login com email fora do padrão
    DADO o acesso ao Portal de Ativação
    QUANDO o login com usuário com email "meue!mail@gmail.co!"m" e senha "dificil"
    ENTÃO o sistema deverá exibir mensagem de erro "The Email field is not a valid e-mail address."

Realizar login com sucesso
    DADO o acesso ao Portal de Ativação
    QUANDO o login com usuário com email "admin@axisx3.com" e senha "XvEnxvw5XcX2!uz" 
    ENTÃO o sistema deverá exibir a tela de consulta