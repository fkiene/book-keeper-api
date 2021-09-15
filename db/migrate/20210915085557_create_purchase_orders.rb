class CreatePurchaseOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :purchase_orders do |t|
      t.string :number
      t.datetime :ordered_at
      t.boolean :is_paid
      t.money :total_amount
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
