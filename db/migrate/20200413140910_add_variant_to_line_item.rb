class AddVariantToLineItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :line_items, :variants, foreign_key: true
  end
end
