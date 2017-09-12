require 'active_model_serializers'
require 'active_support/all'
require './utils/carro'

class Ferrari
  def self.ferrari_carro
    ferrari = Carro.new
    ferrari.modelo = "Ferrari"
    ferrari.motor = 1.0
    ferrari.rodas = 18
    ferrari.opcionais = ["vidro","ar","air-bag","direção"]
    ferrari.ano = 1999
    ferrari.novo = false
    serializer = CarroSerializer.new ferrari, ferrari: false

    serializer.to_json
  end
end
