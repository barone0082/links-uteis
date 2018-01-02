# encoding: utf-8



# Realizar Cadastro no site estoque estendido como PF

Dado (/^que peguei o cpf no gerador$/)do 
  @cpf_gerado = @page.(GeradorCPFCNPJScreen).gerarCPF
  @cpf_gerado_email = @page.(GeradorCPFCNPJScreen).gerarEmailCPF(@cpf_gerado)

  
end

Dado (/^que eu esteja no site da estoqueEstendido$/)do
@page.(HomeScreen).irSite(@browser)

end


E (/^vou em logar$/)do
@page.(HomeScreen).IrParaLogin(@browser)

end

Entao (/^preencho cpf e cep$/)do
@page.(LoginScreen).CriarUsuarioPF(@cpf_gerado)

end
Entao(/^preencho meus dados pessoais pf$/)do
@page.(CadastroScreen).preencherDadosPF(@cpf_gerado_email)
expect(@page.(HomeScreen).logado?).to be true

end




# Realizar Cadastro no site estoque estendido como PJ



	Dado(/que peguei o cnpj no gerador$/)do

		@cnpjGerado=@page.(GeradorCPFCNPJScreen).gerarCNPJ
		@cnpjGeradoEmail=@page.(GeradorCPFCNPJScreen).gerarEmailCNPJ(@cnpjGerado)



	end


	
		Entao(/preencho cnpj e cep$/)do

		@page.(LoginScreen).CriarUsuarioPJ(@cnpjGerado)




	end


		Entao(/preencho meus dados pessoais pj$/)do


		@page.(CadastroScreen).preencherDadosPJ(@cnpjGeradoEmail)

		expect(@page.(HomeScreen).logado?).to be true

	end


