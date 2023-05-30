class PagesController < ApplicationController
  def home
    @offers = Offers.all
  end

  def dashboard
  end
end
