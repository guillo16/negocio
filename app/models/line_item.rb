class LineItem < ApplicationRecord
  belongs_to :car
  belongs_to :cart
  belongs_to :variant
  def total_price
    car.price.to_i * quantity.to_i
  end
end
