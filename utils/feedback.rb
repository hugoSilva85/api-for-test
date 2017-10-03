require 'br_documents'
require './utils/errors'
require './utils/valid'

class Feedback
  def self.resposta_fianceira(json)
    obj = json.interessado.cpf
    validacao = BRDocuments::CPF.valid?(obj)

    valid_cpf = Valid.new.cpf_valid
    invalid_cpf = Errors.new.cpf_error

    if validacao
      valid_cpf
    else
      invalid_cpf
    end
  end
end
