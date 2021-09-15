class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.references :customer
      t.money :total
      t.boolean :is_paid

      t.timestamps
    end
  end
end
