require 'br_documents'
require './utils/errors'
require './utils/valid'

class Feedback
  def self.resposta_fianceira(json)
    obj = json.interessado.cpf
    validacao = BRDocuments::CPF.valid?(obj)

    valid = Valid.new
    invalid = Errors.new

    if validacao
      valid.cpf_valid
    else
      invalid.cpf_error
    end
  end
end
