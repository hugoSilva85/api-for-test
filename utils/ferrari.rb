require 'active_model_serializers'
require 'active_support/all'
require './utils/carro'

class Ferrari
  def self.composicao
    maranello = Carro.new
    maranello.modelo = "Maranello"
    maranello.motor = 3.0
    maranello.rodas = 18
    maranello.opcionais = ["vidro","ar","air-bag","direção"]
    maranello.ano = 1999
    maranello.novo = false
    serializer = CarroSerializer.new maranello, maranello: false

    serializer.to_json
  end
end
