class LineItem < ApplicationRecord
  belongs_to :car
  belongs_to :cart
end
