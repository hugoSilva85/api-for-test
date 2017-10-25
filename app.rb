require 'sinatra'
require 'json'
require './utils/ferrari'
require './utils/volks'
require './utils/proposta'
require './utils/feedback'
require 'pry-byebug'

set :bind, '0.0.0.0'
set :environment, :production

get '/carros' do
  content_type :json
  # matches "GET /carros?marca=ferrari&modelo=maranello"
  marca = params[:marca]

  response = marca.constantize.composicao
  json = JSON.parse(response)
  JSON.pretty_generate(json.to_h)
end

post '/compra' do
  content_type :json

  request_body = JSON.parse(request.body.read)
  objeto_serealizado = Proposta.from_json(request_body)

  response = Feedback.resposta_fianceira(objeto_serealizado)
  json = JSON.parse(response)
  JSON.pretty_generate(response.to_h)
end
