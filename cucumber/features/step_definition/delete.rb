Dado(/^que eu envie um registro para delecao$/) do
  @body_delete = {
    "id": 1
  }.to_json

  @delete = HTTParty.delete 'https://test-eng-api.herokuapp.com/claim_challenge',
    :body => @body_delete,
    :headers => {
      "Content-Type" => 'application/json'
    }
end

Entao(/^o registro devera ser deletado do banco com sucesso$/) do
  expect(@delete["id"]).to eq nil
end
