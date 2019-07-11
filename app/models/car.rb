class Car < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  monetize :price_cents
  has_many :line_items, dependent: :destroy
  validates :name, presence: true

  private


end
