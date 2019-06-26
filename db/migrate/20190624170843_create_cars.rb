class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :sku
      t.string :brand
      t.string :category
      t.string :photo1
      t.string :photo2
      t.string :photo3
      t.string :photo4
      t.string :description

      t.timestamps
    end
  end
end
