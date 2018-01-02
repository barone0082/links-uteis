# encoding: utf-8
class CarrinhoScreen


	def initialize(browser)
	@browser = browser
	@nomeCartao = browser.text_field(name:'titularcartao')
	@numeroCartao = browser.text_field(name:'numeroCartao')
	@CodigoSegurancaCartao = browser.text_field(name:'CodigoSegurancaCartao')
	
end

	def finalizarCompraOnlineBoleto(browser)

		sleep 4
		browser.button(class:'concluir-pedido').click	
		sleep 3
		browser.div(class:'modal-checkout').div(class:'botoes').button(class:'btn-sim online').click
		sleep 4
		browser.div(class:'concluir-pedido').button().wait_until_present(30).click
		sleep 5
		browser.li(class:'boleto').click
		sleep 5
		browser.div(class:'selecionar-pagamento').button().click
		sleep 10



	end


		def finalizarCompraOnlineCartao(browser,nome,numero,codigoSeguranca)

		sleep 4
		browser.button(class:'concluir-pedido').click	
		sleep 3
		browser.div(class:'modal-checkout').div(class:'botoes').button(class:'btn-sim online').click
		sleep 4
		browser.div(class:'concluir-pedido').button().wait_until_present(30).click
		sleep 5
		browser.li(class:'cartao').click
		sleep 5
		browser.ul(class:'options payment-card-options').labels(class:'payment-option')[1].click
		sleep 3
		browser.select(name:'mesCartao').click
		sleep 2
		browser.option(value:'12').click

		browser.select(name:'anoCartao').click

		browser.option(value:'2018').click

		@nomeCartao.set nome
		@numeroCartao.set numero
		@CodigoSegurancaCartao.set codigoSeguranca




	end







#VALIDAÇÕES RSPEC

	def comprou?
		
		 @browser.div(class:'sucesso').exists? 

	end


end
	

