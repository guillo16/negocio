class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  has_one :order
  def add_car(car, variant)
    current_item = line_items.find_by(car_id: car.id, variant_id: variant.id)

    if current_item
      current_item.increment(:quantity)
    else
      current_item = line_items.build(car_id: car.id, variant_id: variant.id)
    end
    current_item
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end
end
