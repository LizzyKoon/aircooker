class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @offer = Offer.find(params[:id])
    @booking = Booking.new(booking_params)
    @booking.offer = @offer
    if @booking.save
      redirect_to offer_path(@offer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:offer_id])
  end

  def index
    @bookings = Booking.all
  end

  private

  def booking_params
    params.require(:booking).permit(:comment, :start_date, :end_date)
  end
end
