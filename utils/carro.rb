require 'active_model_serializers'
require 'active_support/all'

class Carro
  # Torna esse model serializável pelo ActiveModel::Serialization
  include ActiveModel::Serialization

  attr_accessor :modelo, :motor, :rodas, :opcionais, :ano, :novo
end

class CarroSerializer < ActiveModel::Serializer
  attributes :modelo, :motor, :rodas, :opcionais, :ano, :novo
end
