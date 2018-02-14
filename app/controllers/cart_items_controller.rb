class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def destroy
    @cart_item = current_cart.cart_items.find(params[:id])
    @cart_item.destroy
    flash[:warning] = "成功将 '#{@cart_item.product.title}' 从购物车中删除！"
    redirect_back(fallback_location: root_path)
  end
end
