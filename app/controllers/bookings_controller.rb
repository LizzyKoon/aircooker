class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(booking_params)
    @booking.offer = @offer
    @booking.user = current_user
    if @booking.save
      redirect_to pages_dashboard_path
       #ajouter alerte
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def index
    @bookings = Booking.all
  end

  def price
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.find(params[:id])
    @booking.offer = @offer
    @booking.end_date - @booking.start_date
  end

  private

  def booking_params
    params.require(:booking).permit(:comment, :start_date, :end_date, :user_id, :offer_id, :created_at, :updated_at)
  end
end
