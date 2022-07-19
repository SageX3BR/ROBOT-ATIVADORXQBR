# ROBOT-ATIVADORXQBR




<div  align="center">
  <p>
    <a  href="https://robotframework.org/"  target="blank"><img  src="https://aws1.discourse-cdn.com/standard21/uploads/robotframework1/original/1X/702e61576ed30f6975fd86c11bd2a46402311868.png"  width="200"  alt="Robot Framework" /></a>
  </p>
  <br>
  <p>
    <a  href="https://robotframework.org/"  target="_blank">Robot Framework</a> Robot Framework is a generic open source automation framework.
  </p>
  <br>
</div>



#  Descrição

Sejam bem-vindos! Esse projeto tem por objetivo automatizar testes do portal Ativador do XQBR.

  
# Como usar o projeto na sua máquina?


* Robot Framework requer Python 3.6 ou mais recente, então instale o Python para seguir com os próximos passos. https://www.python.org/downloads/
* É necessário instalar o gerenciador de pacote pipenv através do comando `pip install pipenv`. Você pode ver mais sobre o gerenciador: https://pypi.org/project/pipenv/
* Após instalar o pipenv será necessário configurar as variáveis de sistema no Path da sua máquina. Esse manual explica como fazer isso: https://www.pythontutorial.net/python-basics/install-pipenv-windows/
* Antes de começar a usar o projeto, valide se realmente o Pipenv está funcionando corretamente, pois sem esta etapa não será possível usar o projeto. Digite o comando `pipenv -h` e ele deve retornar a documentação do Pipenv
```bash
Usage: pipenv [OPTIONS] COMMAND [ARGS]...
```
* Este projeto usa a versão Python 3.21, para rodar em versões diferentes use o comando `pipenv --python 3.x`



##  Instale todas as dependências com pipenv


Se você já possui o Python com o pipenv instalado, basta executar:
  

```bash

$ pipenv install --dev

```



##  Como rodar os testes?


```bash

# Antes de começar, entre na sua máquina virtual com o comando abaixo:

$ pipenv shell


# Rode os testes com o comando ´robot nomedoarquivo.robot´

$ robot tests.robot
#or
$  robot --outputdir ./output tests.robot
$ robot -d ./results -v  BROWSER:headlessfirefox  .\SearchClinicTest.robot

  
# Para rodar um script do pipfile use o comando:

$ pipenv run suite_de_teste


# Para outros comandos consulte a documentação de comandos do robot:

$ robot --help


# Para sair do ambiente da máquina virtual basta digitar o comando no terminal:

$ exit
```

## Exemplo

Abaixo está um caso de teste de exemplo simples para testar o login em algum sistema. Você pode encontrar mais exemplos com links para projetos de demonstração relacionados em http://robotframework.org.

```robot
*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          login.resource

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    demo
    Input Password    mode
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser

```

## VSCode Robot Framework Language Server Extension
Altamente recomendado instalar esta extensão: extensão
[Robot Framework Language Server extension](https://marketplace.visualstudio.com/items?itemName=robocorp.robotframework-lsp)



##  Licença

Robot Framework é um software de código aberto fornecido sob a documentação Apache License 2.0 Robot Framework e outros conteúdos semelhantes usam a licença Creative Commons Attribution 3.0 Unported . A maioria das bibliotecas e ferramentas do ecossistema também são de código aberto, mas podem usar licenças diferentes.

A marca registrada Robot Framework é de propriedade da [Robot Framework](https://robotframework.org/).
