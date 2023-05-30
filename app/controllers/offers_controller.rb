class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
<<<<<<< HEAD
    if @offer.save
    else
    redirect_to offer_path
=======
    @offer.user = current_user
    @offer.save
    redirect_to offer_path(@offer)
  end

  def show
    @offer = Offer.find(params[:id])
>>>>>>> 9885011759374d60cbad1a48217d3333b50abb5a
  end

  private

  def offer_params
    params.require(:offer).permit(:location, :description, :availability, :capacity, :name, :price)
  end
end
