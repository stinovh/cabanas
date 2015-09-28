class AvailabilitiesController < ApplicationController
  def index
    @availabilities = Availability.search(params[:availability]).order("created_at DESC")
  end
end


