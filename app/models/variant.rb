class Variant < ApplicationRecord
  belongs_to :car
  has_many :line_items, dependent: :destroy
  validates :size_name, presence: true
end
