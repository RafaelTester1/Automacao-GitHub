require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'

Capybara.configure do |config|
    #selenium       selenium_chrome     selenium_chrome_healess
    config.default_driver = :selenium_chrome
    config.app_host = 'https://github.com/' #URL Padrão
    config.default_max_wait_time = 5 #Tempo de espera para esperar o elemento aparecer na tela
end