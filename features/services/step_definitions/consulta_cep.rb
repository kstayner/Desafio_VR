Dado('que eu consulto o cep {string} na api da viacep') do |cep|
  @response = ViaCep.new.busca(cep)
  @json = JSON.parse(@response.body)
end

Então('o retorno do campo {string} deve conter o valor {string}') do |atributo, valor|
  expect(@json[atributo]).to eq valor
  puts @json['ibge']
end

Então('deve retornar {string} com o mensagem true') do |atributo|
  @json = JSON.parse(@response.body)
  expect(@json[atributo]).to eq true
end

E('o retorno do status code deve ser {string}') do |status_code|
  expect(@response.code).to eq status_code.to_i
end
