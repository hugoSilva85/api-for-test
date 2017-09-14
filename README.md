# api-for-test
Api criada para test (Sinatra)

Json para envio (POST => /compra)

{
  "financeira": "Bradesco",
  "valorFinanciamento": 45000,
  "parcelas": 36,
  "jurosMes": 1.5,
  "interessado": {
    "nome": 5,
    "idade": 18,
    "cpf": "5555666677778884",
    "endereco": [
      {	
      	"tipoEndereco":"Comercial",
        "rua": 5,
        "numero": 18,
        "bairro": "itaquera",
        "estado": "Sao Paulo"
      },
      {
      	"tipoEndereco":"Residencial",
        "rua": 5,
        "numero": 18,
        "bairro": "itaquera",
        "estado": "Sao Paulo"
      }
    ]
  }
}
