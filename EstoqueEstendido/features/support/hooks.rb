require 'watir'


After do |scenario|
  @browser.cookies.clear rescue warn 'Sem sessão para limpar'
end
