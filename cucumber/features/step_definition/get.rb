Dado(/^que eu faça um GET no endpoint claim_challenge response 401$/) do
  @get_api = HTTParty.get 'https://test-eng-api.herokuapp.com/claim_challenge'
end

Entao(/^o retorno dele será uma dica para prosseguir a rota$/) do
  puts @get_api.body
  expect(@get_api.code).to eq 401
end

Entao(/^que eu faça um GET no endpoint first_step response 200$/) do
  @get_api = HTTParty.get 'https://test-eng-api.herokuapp.com/claim_challenge',
  :headers=>{"Accept"=>"application/json"}
end

Entao(/^o retorno dele será uma dica para prosseguir a rota2$/) do
  puts @get_api.body
  expect(@get_api.code).to eq 200
end

Entao(/^que eu faça um GET no endpoint first_step response 401$/) do
  @get_api = HTTParty.get 'https://test-eng-api.herokuapp.com/first_step',
  :headers=>{"Accept"=>"application/json"}
end

Entao(/^o retorno dele será uma dica para prosseguir a rota3$/) do
  puts @get_api.body
  expect(@get_api.code).to eq 401
end

Entao(/^que eu faça um GET no endpoint first_step response 200 token$/) do
  @get_api = HTTParty.get 'https://test-eng-api.herokuapp.com/first_step',
  :headers=>{"Accept"=>"application/json","token"=>"xyx"}
end

Entao(/^o retorno dele será uma dica para prosseguir a rota4$/) do
  puts @get_api.body
  expect(@get_api.code).to eq 200
end

Entao(/^que eu faça um GET no endpoint second_step response 401$/) do
  @get_api = HTTParty.get 'https://test-eng-api.herokuapp.com/second_step',
  :headers=>{"Accept"=>"application/json","token"=>"xyx"}
end

Entao(/^o retorno dele será uma dica para prosseguir a rota5$/) do
  puts @get_api.body
  expect(@get_api.code).to eq 401
end

Entao(/^que eu faça um GET no endpoint second_step response 200$/) do
  @get_api = HTTParty.get 'https://test-eng-api.herokuapp.com/second_step?firstKey=redKey',
  :headers=>{"Accept"=>"application/json","token"=>"xyx","firstKey"=>"redKey"}
end

Entao(/^o retorno dele será uma dica para prosseguir a rota6$/) do
  puts @get_api.body
  expect(@get_api.code).to eq 200
end

Entao(/^que eu faça um POST no endpoint last_step response 200$/) do
  @post_api = HTTParty.post 'https://test-eng-api.herokuapp.com/last_step',
  :body => {"token"=>"xyx","firstKey"=>"redKey"},
  :headers => {'Content-Type'=>'application/json'}
end

Entao(/^o retorno dele será uma dica para prosseguir a rota7$/) do
  puts @get_api.body
  expect(@get_api.code).to eq 200
end