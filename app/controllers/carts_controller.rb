class CartsController < ApplicationController
  def index
    @cart_items = CartItem.includes(:product).where(cart_id: current_cart.id)
  end

  def empty
    current_cart.empty!
    flash[:warning] = "已清空购物车！"
    redirect_to carts_path
  end

  def checkout
    @cart_items = CartItem.includes(:product).where(cart_id: current_cart.id)
    @order = Order.new 
  end
end
