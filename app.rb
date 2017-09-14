require 'sinatra'
require 'json'
require './utils/ferrari'
require './utils/proposta'

require 'pry-byebug'



set :port, 8080
set :environment, :production

get '/' do
  Ferrari.composicao
end


post '/compra' do
  request_body = JSON.parse(request.body.read)

  objeto_serealizado = Proposta.from_json(request_body)

  json = objeto_serealizado.to_json
  "Retorno[#{json}]"
end
