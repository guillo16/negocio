class Car < ApplicationRecord
  monetize :price_cents
  has_many :line_items, dependent: :destroy
  validates :name, presence: true

  private


end
