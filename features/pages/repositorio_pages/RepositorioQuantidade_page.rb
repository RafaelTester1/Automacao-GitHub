class RepositorioQuantidade < SitePrism::Page

    set_url 'search?q=Landix&type=repositories'

    element :sign_in1, '.HeaderMenu-link.flex-shrink-0.no-underline[href="/login?return_to=https%3A%2F%2Fgithub.com%2Fsearch%3Fq%3DLandix%26type%3Drepositories"]'
    
    element :username, '#login_field'
    element :password, '#password'
    element :sign_in2, 'input[value="Sign in"]'

    element :encontrado, 'body div main[id="js-pjax-container"] div div div div h3:nth-child(1)'
    elements :exibido, 'ul > li'

    def login
        sleep(2)
        sign_in1.click
        sleep(2)
    end

    def preencher
        sleep(2)
        username.set 'RafaelTester1'
        sleep(2)
        password.set 'H5M3fxvJ'
        sleep(2)
    end 

    def clicar
        sleep(2)
        sign_in2.click
        sleep(2)
    end
end