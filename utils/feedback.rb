require 'br_documents'

class Feedback
  def self.resposta_fianceira(json)
    resposta_false = '{
        "errors": [
            {
                "code": "CPF-001",
                "path": "interessado.cpf",
                "description": "CPF INCORRETO"
            }
        ]
    }'

    resposta_true = '{
    "respostaAnalise": "Aguardar contato"
    }'

    obj = json.interessado.cpf

    validacao = BRDocuments::CPF.valid?(obj)

    if validacao
      resposta_true
    else
      resposta_false
    end
  end
end
