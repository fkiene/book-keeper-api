class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.references :supplier, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.integer:quantity
      t.boolean :is_active
      t.money :price_sold
      t.money :price_bought
      t.references :category

      t.timestamps
    end
  end
end
