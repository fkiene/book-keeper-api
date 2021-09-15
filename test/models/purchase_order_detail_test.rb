# == Schema Information
#
# Table name: purchase_order_details
#
#  id                :bigint           not null, primary key
#  line_total        :money
#  quantity          :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  product_id        :bigint           not null
#  purchase_order_id :bigint           not null
#
# Indexes
#
#  index_purchase_order_details_on_product_id         (product_id)
#  index_purchase_order_details_on_purchase_order_id  (purchase_order_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#  fk_rails_...  (purchase_order_id => purchase_orders.id)
#
require "test_helper"

class PurchaseOrderDetailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
