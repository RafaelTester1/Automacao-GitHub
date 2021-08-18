#language: pt

@busca_repositorio
Funcionalidade: Realizar uma busca de repositórios com o nome Landix

Cenário: Buscar o repositório Landix
Dado que eu já tenha feito o login
Quando digitar na barra de busca o nome Landix
Entao eu verifico se buscou o repositório correto

Cenário: Validar o numero de repositórios exibidos na tela
Quando eu identificar a quantidade de repositórios
Entao eu verifico se a quantidade está correta

Cenário: Validar os tipos de busca 
Quando eu visualizar os tipos de busca na lateral esquerda
Entao eu clico e verifico se estão sendo redirecionadas corretamente