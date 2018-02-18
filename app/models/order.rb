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
#  token            :string
#
# Indexes
#
#  index_orders_on_user_id  (user_id)
#

class Order < ApplicationRecord
  belongs_to :user
  has_many :product_lists
  validates :billing_name,     presence: true
  validates :billing_address,  presence: true
  validates :shipping_name,    presence: true
  validates :shipping_address, presence: true
  before_create :generate_token

  def generate_token
    self.token = SecureRandom.uuid
  end
end
