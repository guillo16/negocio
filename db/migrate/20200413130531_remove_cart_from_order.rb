class RemoveCartFromOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :cart_id, :string
  end
end
