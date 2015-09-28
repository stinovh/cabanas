class AvailabilitiesController < ApplicationController
  def index
    @availabilities = Availability.search(params[:availability][:capacity]).order("created_at DESC")
  end
end


