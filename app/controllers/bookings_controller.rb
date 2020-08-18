class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @garden = Garden.find(params[:id])
    @booking = Booking.new
  end

  def create
    booking = Booking.new(booking_params)
    garden = Garden.find(params[:id])
    booking.garden = garden
    booking.save
    # if booking.save // else redirect_to 'bookings/new'_path(:booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
