Dado(/^que estou na home do Santander$/) do
  @app = App.new
  @app.home.load

end

Quando(/^acesso a área 'Procure uma agência'$/) do
  #Clica em "Agências"
  @app.agency.click_something('Procure uma Agência')

 
  #Clica em "Clique aqui"
  @app.agency.click_something('Clique aqui')
  
  @app.agency.last_window

  sleep(2)

  within_frame(@app.search_agency.iframe) do
    @app.search_agency.proxima.cep.set ADDRESS['AGENCIA']['CEP']
    @app.search_agency.proxima.numero.set ADDRESS['AGENCIA']['NUMERO']
  end


end

Então(/^buscar a agência mais próxima$/) do
  within_frame(@app.search_agency.iframe) do
    @app.search_agency.proxima.buscar.click
    #@app.search_agency.proxima.selecionar.select(1)
    @app.search_agency.proxima.selecionar.click

    sleep(3)
    fail unless page.has_content?(ADDRESS['AGENCIA']['VERIFY_AGENCY'])       
  end

  
  
end