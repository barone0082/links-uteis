# encoding: utf-8
class GeradorCPFCNPJScreen

def initialize(browser)
	@browser = browser
end


  	def gerarCPF
   
		@browser.goto SITE[:gerador][:cpf]
		@browser.div(class:'col-xs-6 text-left pull-right').button(id:'btn-gerar-cpf').click 

		@novoCPF=@browser.div(class:'col-sm-12').div(class:'col-sm-8 col-centered').text_field(id:'numero').value
	end

  	def gerarCNPJ
   
		@browser.goto SITE[:gerador][:cnpj]
		@browser.button(name:'geraCNPJ').click
		@novoCNPJ=@browser.text_field(class: 'saida').value.to_s
		@novoCNPJ=@novoCNPJ.gsub(".","").gsub("-","").gsub("/","")

	end


	def gerarEmailCPF(novoCPF)

        
		@novoEmailCPF=novoCPF<<"@gmail.com"
	end



	def gerarEmailCNPJ(novoCNPJ)


		@novoEmailCNPJ=novoCNPJ<<"@gmail.com"
	end


end