# language: pt

Funcionalidade: Consulta de CEP

  @cep_valido @todos
  Cenário: Consultando na API um CEP válido
    Dado que eu consulto o cep "04551010" na api da viacep
    Então o retorno do campo "ibge" deve conter o valor "3550308"
    E o retorno do status code deve ser "200"

  @cep_invalido @todos
  Cenário: Consultando na API um CEP inválido
    Dado que eu consulto o cep "00000000" na api da viacep
    Então deve retornar "erro" com o mensagem true
    E o retorno do status code deve ser "200"
