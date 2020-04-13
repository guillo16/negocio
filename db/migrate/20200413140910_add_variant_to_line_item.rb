class AddVariantToLineItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :line_items, :variant, foreign_key: true
  end
end
