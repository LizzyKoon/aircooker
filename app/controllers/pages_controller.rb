class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @offers = Offer.all
  end

  def dashboard
    @user = current_user
    @offers = current_user.offers
    # @booking = Booking.find(params[:id])
    # @booking.user = current_user
    @bookings = Booking.where(user_id: current_user.id)
  end
end
