# language: pt

Funcionalidade:m Consultar endereço

Eu como usuário posso consultar endereço via CEP

Cenário: Consultar endereço via CEP
Dado que eu informr o cep "04524030"
Quando efetuar a requisição na API get 
Então é retornado os dados do endereço pertencente ao CEP