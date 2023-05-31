class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  # def price
  #   @offer.price
  # end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offers_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @booking = Booking.new
    @offer = Offer.find(params[:id])
  end

  private

  def offer_params
    params.require(:offer).permit(:location, :description, :availability, :capacity, :name, :price)
  end
end
