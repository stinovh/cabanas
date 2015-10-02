require 'date'

class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def create
    params[:search][:start_date] = Date.strptime(params[:search][:start_date],"%m/%d/%Y") if !params[:search][:start_date].empty?
    params[:search][:end_date] = Date.strptime(params[:search][:end_date],"%m/%d/%Y") if !params[:search][:end_date].empty?
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
    availabilities = Availability.search(@search).order("created_at DESC")
    @final = show_date(availabilities, @search).uniq
    @props = []
    @final.each do |av|
      @props << av.property
    end
    @markers = Gmaps4rails.build_markers(@props) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
    end
  end

  private

  def search_params
    params.require(:search).permit(:country, :price_night, :capacity, :start_date, :end_date)
  end

  def show_date(availabilities, search)
    final = []
    temp = []
    availabilities.each do |availability|
      if availability.property.bookings.empty?
        final << availability
      else
        availability.property.bookings.each do |booking|
          (booking.start_date..booking.end_date).each do |date|
            temp << false  if search_date_in_booking_date(date, search)
          end
        end
      end
      final << availability if !temp.include?(false)
    end
    return final
  end

  def search_date_in_booking_date(date, search)
    (search.start_date..search.end_date).cover?(date)
  end
end

