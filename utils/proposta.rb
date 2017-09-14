require './utils/interessado'

class Proposta
  attr_accessor :financeira, :valor_financiamento, :parcelas, :juros_mes, :interessado

  def self.from_json(json)
    Proposta.new.tap do |proposta|
      unless json.nil?
        proposta.financeira = json['financeira'] if json['financeira'].present?
        proposta.valor_financiamento = json['valorFinanciamento'] if json['valorFinanciamento'].present?
        proposta.parcelas = json['expirationDate'] if json['expirationDate'].present?
        proposta.juros_mes = json['jurosMes'] if json['jurosMes'].present?
        proposta.interessado = Interessado.from_json json['interessado'] if json['interessado'].present?
      end
    end
  end
end
