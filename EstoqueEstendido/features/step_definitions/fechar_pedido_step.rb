# encoding: utf-8

#Realizar Compra por Boleto PJ/PF

		Dado (/que estou logado com meu "([^"]*)"$/) do  |usuario|
		if(usuario=="pf")
			login=USUARIO[:pf][:login]
			senha=USUARIO[:pf][:senha]
		else
			login=USUARIO[:pj][:login]
			senha=USUARIO[:pj][:senha]
		end
		@page.(HomeScreen).irSite(@browser)
		@page.(HomeScreen).IrParaLogin(@browser)
		@page.(LoginScreen).Logar(login,senha)
		expect(@page.(HomeScreen).logado?).to be true
	end

	    Entao(/Adiciono um "([^"]*)"$/) do |produto|  
	     if(produto=="itemNormal")
	     	url=SITE[:produto][:normal]
	    @page.(HomeScreen).adicionarItemNormal(url)
		end
	end

	E (/finalizo a compra por boleto$/) do 
		@page.(CarrinhoScreen).finalizarCompraOnlineBoleto(@browser)
		expect(@page.(CarrinhoScreen).comprou?).to be true
	end



#Realizar Compra por Cartao PF

		E (/finalizo a compra por cartao "([^"]*)"$/) do |cartao|
		

		if(cartao=="visa")
			nome = Cartao[:visa][:nome]
			numero = Cartao[:visa][:numero]
			codigoSeguranca = Cartao[:visa][:codigoSeguranca]

		else
			if(cartao=="mastercard")
			nome = Cartao[:mastercard][:nome]
			numero = Cartao[:mastercard][:numero]
			codigoSeguranca = Cartao[:mastercard][:codigoSeguranca]

		end


	end
	@page.(CarrinhoScreen).finalizarCompraOnlineCartao(@browser,nome,numero,codigoSeguranca)


end

