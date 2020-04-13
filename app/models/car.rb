class Car < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  monetize :price_cents
  has_many :line_items, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :variants, dependent: :destroy
  validates :name, presence: true

  def average
    return self.reviews.map { |r| r.rating }.sum / self.reviews.count if self.reviews.count > 0
    0
  end

  private

  def not_refereced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end

end
