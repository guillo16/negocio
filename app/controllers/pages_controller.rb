class PagesController < ApplicationController

  def home
    @cars = Car.order(price_cents: :desc)
  end
end
