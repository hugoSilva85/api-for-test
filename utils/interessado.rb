require './utils/endereco'

class Interessado
  attr_accessor :nome, :idade, :cpf, :endereco

  def self.from_json(json)
    Interessado.new.tap do |interessado|
      unless json.nil?
        interessado.nome = json['nome'] if json['nome'].present?
        interessado.idade = json['idade'] if json['idade'].present?
        interessado.cpf = json['cpf'] if json['cpf'].present?
        interessado.endereco = Endereco.from_json json['endereco'] if json['endereco'].present?
      end
    end
  end
end
