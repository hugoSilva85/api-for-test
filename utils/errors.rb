class Errors
  def cpf_error
    resposta_false = '{
        "errors": [
            {
                "code": "CPF-001",
                "path": "interessado.cpf",
                "description": "CPF INCORRETO"
            }
        ]
    }'

    resposta_false
  end
end
