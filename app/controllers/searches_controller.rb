require 'date'

class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def create
    params[:search][:start_date] = Date.strptime(params[:search][:start_date],"%m/%d/%Y")
    params[:search][:end_date] = Date.strptime(params[:search][:end_date],"%m/%d/%Y")
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
    @availabilities = Availability.search(@search).order("created_at DESC")
  end

  private

  def search_params
    params.require(:search).permit(:country, :price_night, :capacity, :start_date, :end_date)
  end
end
