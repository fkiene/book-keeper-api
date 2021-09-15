class CreateInvoiceDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :invoice_details do |t|
      t.references :invoice, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer:quantity
      t.money :line_total

      t.timestamps
    end
  end
end
