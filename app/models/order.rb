class Order < ApplicationRecord
  belongs_to :user
  belongs_to :order
  monetize :amount_cents
end
