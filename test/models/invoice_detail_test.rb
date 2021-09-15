# == Schema Information
#
# Table name: invoice_details
#
#  id         :bigint           not null, primary key
#  line_total :money
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  invoice_id :bigint           not null
#  product_id :bigint           not null
#
# Indexes
#
#  index_invoice_details_on_invoice_id  (invoice_id)
#  index_invoice_details_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (invoice_id => invoices.id)
#  fk_rails_...  (product_id => products.id)
#
require "test_helper"

class InvoiceDetailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
