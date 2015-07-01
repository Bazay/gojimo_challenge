class VisitorsController < ApplicationController
  require 'uri'
  require 'net/http'
  before_filter :fetch_qualification_data, :only => :index

  def fetch_qualification_data
    @qualifications = Qualification.all
  end

end
