class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
     @offers = Offer.where(food_category: params[:query])
    else
    @offers = Offer.all
    end
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

  def delete
    @offer = Offer.find(params[:id])
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to offers_path
  end

  private

  def offer_params
    params.require(:offer).permit(:location, :description, :availability, :capacity, :name, :price, pictures:[])
  end
end
