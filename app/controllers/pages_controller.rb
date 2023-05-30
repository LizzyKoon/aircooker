class PagesController < ApplicationController
  def home
    @offers = Offer.all
  end

  def dashboard
  end
end
