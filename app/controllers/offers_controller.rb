class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    @offer.save
    redirect_to offer_path(@offer)
  end

  def show
    @offer = Offer.find(params[:id])
  end

  private

  def offer_params
    params.require(:offer).permit(:location, :description, :availability, :capacity, :name, :price)
  end
end
