Dado("que eu informr o cep {string}") do |string|
    @cep = cep
  end
  
  Quando("efetuar a requisição na API get") do
    @result = HTTParty.get("https://viacep.com.br/ws/#{@cep}/json/")
  end
  
  Então("é retornado os dados do endereço pertencente ao CEP") do
    @respCep = cep
    @endereco = @result.parsed_response
    puts @endereco
    expect(@endereco['cep']).to eq(@respCep)
  end