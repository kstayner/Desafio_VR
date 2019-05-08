# Teste de API usando Cucumber/Ruby/HTTParty.

## Dependências
* RVM
* Ruby 2.4.1

## Instrução de instalação

        * install rvm
        * Veja instrução de instalação (https://rvm.io/rvm/install)
        * Instalar o bundler
                $ gem install bundler

        * Projeto
                $ git clone https://github.com/kstayner/Desafio_VR.git
                $ bundle install

##TAGS

* @cep_valido para executar o cenário de consulta usando um cep válido
* @cep_invalido para executar o cenário de consulta usando um cep inválido
* @todos para executar todos os cenários


## Exemplo:

	$ cucumber --tag @todos
