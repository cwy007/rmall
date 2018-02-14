# == Schema Information
#
# Table name: carts
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cart < ApplicationRecord
  has_many :cart_items
  has_many :products, through: :cart_items

  def add_product_to_cart(product)
    ci = cart_items.build
    ci.product = product
    ci.quantity = 1
    ci.save
  end

  def total_price
    sum = 0
    cis = CartItem.includes(:product).where(cart_id: id)
    cis.each do |ci|
      if ci.product.price.present?
        sum += ci.quantity * ci.product.price
      end
    end
    sum
  end

  def empty!
    cart_items.destroy_all
  end
end
