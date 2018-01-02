# encoding: utf-8
class CadastroScreen

	def initialize(browser)
	
	@browser = browser

	#PF

	@nome=browser.text_field(name:'nome')
	@sobrenome=browser.text_field(name:'sobrenome')
	@rg=browser.text_field(name:'rg')
	@dtNascimento=browser.text_field(name:'datadenascimento')
	@telefoneFixoDDD=browser.text_field(name:'telefonefixo.ddd')
	@telefoneFixo=browser.text_field(name:'telefonefixo.numero')
	@telefoneMovelDDD=browser.text_field(name:'telefoneadicional.ddd')
	@telefoneMovel=browser.text_field(name:'telefoneadicional.numero')
	@email=browser.text_field(name:'email')
	@senha=browser.text_field(name:'senha_confirmation')
	@senhaConfirmacao=browser.text_field(name:'senha')
	@numeroCasa=browser.text_field(name:'numero')

	#PJ

	@setor=browser.div(class:'form pj').text_field(name:'setor')
	@cargo=browser.div(class:'form pj').text_field(name:'cargo')
	@cnpj=browser.div(class:'form pj').text_field(name:'cnpj')
	@razaoSocial=browser.div(class:'form pj').text_field(name:'razaosocial')
	@nomeFantasia=browser.div(class:'form pj').text_field(name:'nomefantasia')
	@ramo=browser.div(class:'form pj').text_field(name:'ramo')

	@nomePJ=browser.div(class:'form pj').text_field(name:'nome')
	@sobrenomePJ=browser.div(class:'form pj').text_field(name:'sobrenome')
	@telefoneFixoDDDPJ=browser.div(class:'form pj').text_field(name:'telefonefixo.ddd')
	@telefoneFixoPJ=browser.div(class:'form pj').text_field(name:'telefonefixo.numero')
	@telefoneMovelDDDPJ=browser.div(class:'form pj').text_field(name:'telefoneadicional.ddd')
	@telefoneMovelPJ=browser.div(class:'form pj').text_field(name:'telefoneadicional.numero')
	@emailPJ=browser.div(class:'form pj').text_field(name:'email')
	@senhaPJ=browser.div(class:'form pj').text_field(name:'senha_confirmation')
	@senhaConfirmacaoPJ=browser.div(class:'form pj').text_field(name:'senha')
	@numeroCasaPJ=browser.div(class:'form pj').text_field(name:'numero')
	@emailPJ=browser.div(class:'form pj').text_field(name:'email')







	



	end



	def preencherDadosPF(novoEmailCPF)

			@nome.set USUARIO[:pf][:nome]
			@email.set (novoEmailCPF)
			@sobrenome.set USUARIO[:pf][:sobrenome]
			@rg.set USUARIO[:pf][:rg]
			@dtNascimento.set USUARIO[:pf][:nascimento]
			@telefoneFixoDDD.set USUARIO[:pf][:fixoddd]
			@telefoneFixo.set USUARIO[:pf][:fixotelefone]
			@telefoneMovelDDD.set USUARIO[:pf][:movelddd]
			@telefoneMovel.set USUARIO[:pf][:moveltelefone]
			@senha.set USUARIO[:pf][:senha]
			@senhaConfirmacao.set USUARIO[:pf][:senha]
			@numeroCasa.set USUARIO[:pf][:numerocasa]
			@browser.select(name:'sexo').option(value:'1').click
			@browser.button(class:'concluir').click
			
			
end


		
	def preencherDadosPJ(novoEmailCNPJ)


		@browser.divs(class:'title')[1].click
		sleep 3
		@nomePJ.set USUARIO[:pj][:nome]
		@sobrenomePJ.set USUARIO[:pj][:sobrenome]
		@setor.set USUARIO[:pj][:setor]
		@cargo.set USUARIO[:pj][:cargo]
		@razaoSocial.set USUARIO[:pj][:razaoSocial]
		@nomeFantasia.set USUARIO[:pj][:nomeFantasia]
		@ramo.set USUARIO[:pj][:ramo]
		@telefoneFixoDDDPJ.set USUARIO[:pj][:telefoneFixoDDD]
		@telefoneFixoPJ.set USUARIO[:pj][:telefoneFixo]
		@telefoneMovelDDDPJ.set USUARIO[:pj][:telefoneMovelDDD]
		@telefoneMovelPJ.set USUARIO[:pj][:telefoneMovel]
		@senhaPJ.set USUARIO[:pj][:senha]
		@senhaConfirmacaoPJ.set USUARIO[:pj][:senha]
		@numeroCasaPJ.set USUARIO[:pj][:numerocasa]
		@emailPJ.set (novoEmailCNPJ)
		@browser.browser.div(class:'form pj').button(class:'concluir').click


		sleep 5

	end

end


	