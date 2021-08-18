Quando('eu acessar a URL e clicar no botão de login') do
    pagina_git = Git.new
    pagina_git.load
    pagina_git.clicar
end

Entao('eu verifico se o caminho está correto') do
    expect(page).to have_current_path('https://github.com/login', url: true)
end

Quando('eu realizar o cadastro errado') do
    login_falha = LoginFalha.new
    login_falha.load
    login_falha.preencher
    login_falha.clicar
end

Entao('eu verifico se está correto ou com falhas') do
    @mensagem_erro = find('div[id="js-flash-container"] div div')
    expect(@mensagem_erro.text).to eql 'Incorrect username or password.'
end

Quando('eu realizar o cadastro correto') do
        login_correto = LoginCorreto.new
        login_correto.load
        login_correto.preencher
        login_correto.clicar 
end


Entao('eu verifico se o login foi bem sucedido') do
    @mensagem_sucesso = find('body > div:nth-child(5) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > main:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > h2:nth-child(2)')
    expect(@mensagem_sucesso.text).to eql 'All activity'
end
