class PropertiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @properties = Property.all
  end

  def index_profile
    @properties = current_user.properties
  end

  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.create(property_params)
    redirect_to profile_myproperties_path
  end

  def edit
     @property = Property.find(params[:id])
  end

  def update
  @property = Property.find(params[:id])
  @property.update(property_params)
  redirect_to property_path(@property)
  end

  def destroy
         @property = Property.find(params[:id])
         @property.destroy
        redirect_to properties_path

  end

private

  def property_params
    params.require(:property).permit(:name, :country, :beach_name, :price_night, :capacity, :user_id)
  end


end
