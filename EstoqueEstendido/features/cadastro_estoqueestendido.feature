#language: pt

@cadastro
Funcionalidade: Realizar Cadastro no estoque estendido da centauro 


@cadastroPF
		Cenário: Cadastro no estoque estendido pf
	    Dado que peguei o cpf no gerador
		Dado que eu esteja no site da estoqueEstendido 
		E vou em logar
		Entao preencho cpf e cep
		Entao preencho meus dados pessoais pf


@cadastroPJ
		Cenário: Cadastro no site pj 
		Dado que peguei o cnpj no gerador
		Dado que eu esteja no site da estoqueEstendido 
		E vou em logar
		Entao preencho cnpj e cep
		Entao preencho meus dados pessoais pj

		