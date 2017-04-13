#language: pt
#UTF-8

Funcionalidade: Buscar agência mais próxima

	Eu como usuário
	Quero acessar o site do Santander
	Para buscar a agência mais próxima

	@agencia
	Cenário: Acessar agências mais próximas
	 Dado que estou na home do Santander
	 Quando acesso a área 'Procure uma agência'
	 Então buscar a agência mais próxima

