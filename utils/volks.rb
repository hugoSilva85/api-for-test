require 'active_model_serializers'
require 'active_support/all'
require './utils/carro'

class Volks
  def self.composicao
    gol = Carro.new
    gol.modelo = "Gol"
    gol.motor = 1.0
    gol.rodas = 13
    gol.opcionais = ["vidro","ar"]
    gol.ano = 2001
    gol.novo = false
    serializer = CarroSerializer.new gol, gol: false

    serializer.to_json
  end
end
