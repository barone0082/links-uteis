# encoding: utf-8
class HomeScreen

	def initialize(browser)
		@browser = browser
	end



def irSite(browser)
 browser.goto SITE[:centauro][:ambiente]	
 sleep 2
 
end


  def IrParaLogin(browser)
   
 browser.header(class:'header').i(class:'bt-menu hamburger').click
 sleep 5
 browser.nav(class:'menu').div(class:'menu-usuario').a(class:'login').click
end



def adicionarItemNormal(url)


	@browser.goto url
	@browser.uls(class:'opcoes-tamanhos')[3].lis.first.click
	@browser.button(class:'comprar').click





end



#Validações do teste
		def logado?
		sleep 3
		 @browser.header(class:'header').i(class:'bt-menu hamburger').click
		 @browser.div(class:'menu-usuario').div(class:'nome').text.include? "Olá"
	end

end