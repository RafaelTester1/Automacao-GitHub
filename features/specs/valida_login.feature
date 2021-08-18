#language: pt

@valida_login
Funcionalidade: Realizar teste de autenticação de login

Cenário: Validar os campos de entrada de dados de login
Quando eu acessar a URL e clicar no botão de login
Entao eu verifico se o caminho está correto

Cenário: Validar caso de login com erro
Quando eu realizar o cadastro errado
Entao eu verifico se está correto ou com falhas

Cenário: Validar caso de login bem sucedido
Quando eu realizar o cadastro correto
Entao eu verifico se o login foi bem sucedido
