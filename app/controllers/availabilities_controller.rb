class AvailabilitiesController < ApplicationController
  def index
    @params = params[:start_date]
  end
end
