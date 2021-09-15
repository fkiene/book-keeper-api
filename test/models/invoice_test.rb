# == Schema Information
#
# Table name: invoices
#
#  id          :bigint           not null, primary key
#  is_paid     :boolean
#  total       :money
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :bigint
#
# Indexes
#
#  index_invoices_on_customer_id  (customer_id)
#
require "test_helper"

class InvoiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
