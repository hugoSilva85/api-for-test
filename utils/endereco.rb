class Endereco
  attr_accessor :tipo_endereco, :rua, :numero, :bairro, :estado

  def self.from_json(json)
    if json.is_a? Array
      [].tap do |balances|
        json.each do |resource|
          balances.push create_endereco(resource)
        end
      end
    else
      create_endereco(resource)
    end
  end

  def self.create_endereco(json)
    Endereco.new.tap do |endereco|
      unless json.nil?
        endereco.tipo_endereco = json['tipoEndereco'] if json['tipoEndereco'].present?
        endereco.rua = json['rua'] if json['rua'].present?
        endereco.numero = json['numero'] if json['numero'].present?
        endereco.bairro = json['bairro'] if json['bairro'].present?
        endereco.estado = json['estado'] if json['estado'].present?
      end
    end
  end
end
