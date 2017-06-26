Dado(/^que eu faça um GET no endpoint clientes$/) do
  @get_clientes = HTTParty.get 'https://test-eng-api.herokuapp.com/claim_challenge'
end

Entao(/^o retorno dele será todos os clientes cadastrados$/) do
  puts @get_clientes.body
  expect(@get_clientes.code).to eq 200
end
