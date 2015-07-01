class VisitorsController < ApplicationController
  require 'uri'
  require 'net/http'
  before_filter :fetch_qualification_data, :only => :index

  def fetch_qualification_data
    @qualification_root_url = "https://api.gojimo.net"

    data = JSON.parse(Net::HTTP.get(URI.parse(@qualification_root_url + "/api/v4/qualifications")))

    @qualifications = data.sort_by{|q|q['name']}
  end

end
