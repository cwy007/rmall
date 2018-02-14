# == Schema Information
#
# Table name: orders
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  total            :integer
#  billing_name     :string
#  billing_address  :string
#  shipping_name    :string
#  shipping_address :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_orders_on_user_id  (user_id)
#

class Order < ApplicationRecord
  belongs_to :user 
end
