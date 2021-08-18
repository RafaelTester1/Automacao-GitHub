# Automação GitHub
## Processo Seletivo – Analista de testes automatizados

O objetivo do projeto é automatizar os testes de login e busca de repositórios do site GitHub (https://github.com/)

## Pré-Requisitos
- Instalar Ruby (https://www.ruby-lang.org/pt/)
- Instalar o Bundler (gem install bundler - CMD)
- Visual Studio Code (https://code.visualstudio.com/)  
    Plugin ruby | Plugin cucumber (Gherkin indent + Snnipets adn Syntax Highlights...) | Plugin vscode icons
- Baixar o chromedriver correspondente a versão do google chrome da sua máquina (https://chromedriver.chromium.org/downloads). Após o download extraia o arquivo para a pasta "C:\Windows"

## Comandos
Use os comandos abaixo para baixar as dependências necessárias para rodar o projeto no terminal e a respectiva chamada das tags.

- [bundle install] - Baixa as gems (bibliotecas de código)
- [cucumber --t "@valida_login"] - Vai rodar a primeira funcionalidade com os 3 cenários
- [cucumber --t "@busca_repositorio"] - Vai rodar a segunda funcionalidade com os 3 cenários
