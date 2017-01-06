require "selenium-webdriver"
gem "test-unit"
require "test/unit"
puts ENV['PATH']
ENV['PATH'] = ENV['PATH'] +';'+ File.dirname(File.expand_path('.'))+"/resourses"
#ENV['PATH'].concat (File.dirname(File.expand_path('resouses/geckodriver.exe')))
puts ENV['PATH']
#$PATH.unshift(File.expand_path(File.dirname("geckodriver.exe")))
#Selenium::WebDriver::Firefox.path = "/resorces"
Selenium::WebDriver::Firefox::Binary.path='C:\\Program Files\\Mozilla Firefox\\firefox.exe'
@driver = Selenium::WebDriver.for :firefox, marionette: true
#System.setProperty("webdriver.gecko.driver", "src\\test\\resources\\geckodriver.exe");
@base_url = "https://www.google.ua/"
@driver.get(@base_url + "/")


puts "Hello World"
puts "This is me"
