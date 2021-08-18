class LoginFalha < SitePrism::Page

    set_url 'login'

    element :username, '#login_field'
    element :password, '#password'
    element :sign_in, 'input[value="Sign in"]'

    def preencher
        sleep(2)
        username.set 'TesteUsername123!'
        sleep(2)
        password.set 'TestePassword123!'
        sleep(2)
    end 

    def clicar
        sleep(2)
        sign_in.click
        sleep(2)
    end
end