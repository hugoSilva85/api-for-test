require 'sinatra'
require 'json'
require './utils/ferrari'

get '/' do
  Ferrari.ferrari_carro
end


post '/results' do
  params[:queryJql]
  params[:maxResults]
  params[:tags]
end
