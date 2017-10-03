require 'sinatra'
require 'json'
require './utils/ferrari'
require './utils/proposta'
require './utils/feedback'
require 'pry-byebug'


set :port, 8080
set :environment, :production

get '/' do
  Ferrari.composicao
end

post '/compra' do
  request_body = JSON.parse(request.body.read)
  objeto_serealizado = Proposta.from_json(request_body)

  response = Feedback.resposta_fianceira(objeto_serealizado)
  response.to_s
end
