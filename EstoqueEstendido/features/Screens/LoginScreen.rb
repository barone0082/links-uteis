# encoding: utf-8
class LoginScreen
	


def initialize(browser)
	@browser = browser
	@login=browser.text_field(id:'email-cpf')
	@senha=browser.text_field(id:'senha-cpf')
	@cep=browser.text_field(id:'senha-cpf')


end
  
 def Logar(usuario,senha)

	@login.set usuario
	@browser.spans[2].click
	@senha.set senha
	@browser.button(class:'entrar-cadastrar').click


	sleep 3


 end

 def CriarUsuarioPF(novoCPF)

@login.set(novoCPF)
@browser.spans[1].click
@cep.set('06420010')
@browser.form(class:'form-login has-validation-callback').button(class:'entrar-cadastrar cadastrar').click

sleep 5


 end


 def CriarUsuarioPJ(novoCNPJ)

@login.set(novoCNPJ)
@browser.spans[1].click
@cep.set('06420010')
@browser.form(class:'form-login has-validation-callback').button(class:'entrar-cadastrar cadastrar').click

 end
  	

end

 
