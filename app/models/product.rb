# == Schema Information
#
# Table name: products
#
#  id           :bigint           not null, primary key
#  description  :string
#  is_active    :boolean
#  name         :string
#  price_bought :money
#  price_sold   :money
#  quantity     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  category_id  :bigint
#  supplier_id  :bigint           not null
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#  index_products_on_supplier_id  (supplier_id)
#
# Foreign Keys
#
#  fk_rails_...  (supplier_id => suppliers.id)
#
class Product < ApplicationRecord
  belongs_to :supplier
end
