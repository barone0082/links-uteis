# encoding: utf-8
require 'watir'
require 'rspec'

browser = Watir::Browser.new
browser.window.maximize

page = lambda {|b, klass| klass.new b }.curry.(browser)

Before do
  @page = page
  #Seta o navegar como variavel de instancia para os cenários utilizarem
  @browser = browser

end

at_exit do
  browser.cookies.clear
  browser.close
end
