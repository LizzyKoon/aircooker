class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
    redirect_to offers_path
    else
    render :new, status: :unprocessable_entity

    end
  end

  private

  def offer_params
    params.require(:offer).permit(:location, :description, :availability, :capacity, :name, :price)
  end
end
