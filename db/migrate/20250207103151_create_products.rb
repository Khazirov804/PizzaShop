class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t| # create_table это создать таблицу
      t.string :title
      t.text :description
      t.decimal :price
      t.decimal :size
      t.boolean :is_spicy
      t.boolean :is_veg
      t.boolean :is_best_offer
      t.string :path_to_image

      t.timestamps
    end
  end
end
