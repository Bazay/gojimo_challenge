require 'uri'
require 'net/http'

module FetchData

  ROOT_URL = "https://api.gojimo.net"

  @data = JSON.parse(Net::HTTP.get(URI.parse(ROOT_URL + "/api/v4/qualifications")))

  def get_qualifications
  end

end