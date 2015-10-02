class BookingsController < ApplicationController
  before_action :authenticate_user!

  def show
    @bookings = current_user.bookings
    @total = 0
    @price = 0
  end

  def new
    @booking = Booking.new
    @search = Search.find(params[:search_id])
    @property = Property.find(params[:property_id])
  end

  def create
    @booking = Booking.create(booking_params)
    redirect_to root_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to profile_mybookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:property_id, :user_id, :start_date, :end_date, :capacity)
  end
end
