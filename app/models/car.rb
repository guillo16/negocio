class Car < ApplicationRecord
  validates :name, presence: true
  monetize :price_cents
  has_many :line_items
end
