Dado('que eu já tenha feito o login') do
    repositorio_login = LoginCorreto.new
    repositorio_login.load
    repositorio_login.preencher
    repositorio_login.clicar
end

Quando('digitar na barra de busca o nome Landix') do
    find('input[placeholder="Search or jump to…"]').set('Landix')
    sleep(2)
    find('div[aria-label="Landix"]').click
    sleep(2)
end

Entao('eu verifico se buscou o repositório correto') do
    expect(page).to have_current_path('https://github.com/search?q=Landix', url: true)
end

Quando('eu identificar a quantidade de repositórios') do
    @busca_repositorio = RepositorioQuantidade.new
    @busca_repositorio.load
    @busca_repositorio.login
    @busca_repositorio.preencher
    @busca_repositorio.clicar

    @resultado_pesquisa = @busca_repositorio.encontrado.text.to_i

    within('.repo-list') do
        @quantidade_pagina = @busca_repositorio.exibido.size
    end
end

Entao('eu verifico se a quantidade está correta') do
    expect(@quantidade_pagina).to eq (@resultado_pesquisa)
end

Quando('eu visualizar os tipos de busca na lateral esquerda') do
    @tipos_busca = TiposBusca.new
    @tipos_busca.load
    @tipos_busca.login
    @tipos_busca.preencher
    @tipos_busca.clicar
end

Entao('eu clico e verifico se estão sendo redirecionadas corretamente') do
    
    within ('main[id="js-pjax-container"] nav:nth-child(1)') do
        @tamanho_array = @tipos_busca.tipos.length
    end
    
    @contador = 0

    while @contador < @tamanho_array
        within ('main[id="js-pjax-container"] nav:nth-child(1)') do
            type = @tipos_busca.tipos[@contador].text.gsub(/\d/,"").sub('?','').strip.downcase
            sleep(2)
            @tipos_busca.tipos[@contador].click
            sleep(2)

            if @contador != 5
                expect(page.current_url).to eq("https://github.com/search?q=Landix&type=#{type}") 
            else
                expect(page.current_url).to eq("https://github.com/search?q=Landix&type=registry#{type}")
            end

            @contador += 1
        end
    end
end

