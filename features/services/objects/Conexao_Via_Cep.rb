# Class ViaCep
class ViaCep
  include HTTParty

  base_uri ENVIRONMENT['api']
  format :json

  def initialize
    @http_headers = {
      'Content-Type' => 'application/json; charset=UTF-8',
      'Connection' => 'keep-alive'
    }
  end

  def busca(cep)
    self.class.get("/ws/#{cep}/json/", headers: @http_headers)
  end
end
