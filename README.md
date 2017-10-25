# Levantar o Docker
  docker-compose up --build 
	
  docker-compose down 
  
# api-for-test
Api criada para teste (Sinatra)

Json para envio (POST => /compra)

```json
{
  "financeira": "Bradesco",
  "valorFinanciamento": 45000,
  "parcelas": 36,
  "jurosMes": 1.5,
  "interessado": {
    "nome": "Hugo Silva",
    "idade": 18,
    "cpf": "5555666677778884",
    "endereco": [
      {	
      	"tipoEndereco":"Comercial",
        "rua": "Av Faria Lima",
        "numero": 18,
        "bairro": "Cidade Jardim",
        "estado": "Sao Paulo"
      },
      {
      	"tipoEndereco":"Residencial",
        "rua": "Forte de Sao Marcos",
        "numero": 34,
        "bairro": "itaquera",
        "estado": "Sao Paulo"
      }
    ]
  }
}
```
