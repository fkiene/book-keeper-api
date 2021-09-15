class CreatePurchaseOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :purchase_order_details do |t|
      t.references :purchase_order, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer:quantity
      t.money :line_total

      t.timestamps
    end
  end
end
