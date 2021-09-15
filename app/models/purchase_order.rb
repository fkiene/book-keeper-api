# == Schema Information
#
# Table name: purchase_orders
#
#  id           :bigint           not null, primary key
#  is_paid      :boolean
#  number       :string
#  ordered_at   :datetime
#  total_amount :money
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  supplier_id  :bigint           not null
#
# Indexes
#
#  index_purchase_orders_on_supplier_id  (supplier_id)
#
# Foreign Keys
#
#  fk_rails_...  (supplier_id => suppliers.id)
#
class PurchaseOrder < ApplicationRecord
  belongs_to :supplier
end
