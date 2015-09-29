class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def show
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.create(property_params)
    redirect_to properties_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def property_params
    params.require(:property).permit(:name, :country, :beach_name, :price_night, :capacity)
  end


end
