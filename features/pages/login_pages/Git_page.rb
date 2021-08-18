class Git < SitePrism::Page
    
    set_url ''

    element :sign_in, 'a[href="/login"]'

    def clicar
        sleep(2)
        sign_in.click
        sleep(2)
    end
end