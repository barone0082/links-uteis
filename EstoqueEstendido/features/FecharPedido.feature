#language: pt

@Pedidos
Funcionalidade: Fechar Pedidos
		
	

		@PedidoBoletopf @pf  @boleto  @itemNormal
		Cenário: Fechar Pedido por Boleto 
	    Dado que estou logado com meu "pf"
	    Entao Adiciono um "itemNormal" 
		E finalizo a compra por boleto



		@PedidoCartaoVisa @pf @cartao @visa @itemNormal
		Cenário: Fechar Pedido por Cartao
		Dado que estou logado com meu "pf"
	    Entao Adiciono um "itemNormal"
		E finalizo a compra por cartao "visa"






		@PedidoBoletopj @pj @boleto @itemNormal
		Cenário: Fechar Pedido por Boleto 
	    Dado que estou logado com meu "pj"
	    Entao Adiciono um "itemNormal" 
		E finalizo a compra por boleto

		@pedidoCartaoVisa @pj  @cartao  @itemNormal
		Cenário: Fechar Pedido por Cartao
		Dado que estou logado com meu "pj"
	    Entao Adiciono um "itemNormal" 
		E finalizo a compra com o cartao "visa"




	    


