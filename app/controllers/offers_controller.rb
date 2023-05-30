class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      @offer.user = current_user
      redirect_to offer_path(@offer)
    else
<<<<<<< HEAD
    redirect_to offer_path

    redirect_to offer_path(@offer)
=======
      render :new, status: :unprocessable_entity
>>>>>>> 6c336e10ecef0011c0ae2707970d916a681e9529
    end
  end

  def show
    @offer = Offer.find(params[:id])
  end

  private

  def offer_params
    params.require(:offer).permit(:location, :description, :availability, :capacity, :name, :price)
  end
end
