class CartsController < ApplicationController
  def index
    @cart_items = CartItem.includes(:product).where(cart_id: current_cart.id)
  end
end
