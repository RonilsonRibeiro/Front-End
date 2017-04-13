class BuscaCep < SitePrism:: Section
	element :cep, "input[id='refCep']"
	element :numero, "input[id='refNumero']"
	element :buscar, :xpath, ".//*[@id='BuscaAgenProximaForm']/ul[3]/li[2]/a/img"
	#element :selecionar, "select[id='refEndereco']"
	element :selecionar, :xpath, ".//*[@id='refEndereco']/option[2]"
	
end


class BuscarAgencia < SitePrism:: Page
	element :iframe, "iframe"
	section :proxima, BuscaCep, "#BuscaAgenProxima"	
end