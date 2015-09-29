class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def create
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
