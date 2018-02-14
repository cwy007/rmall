class CartItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cart_item, only: [:update, :destroy]

  def update
    @cart_item.update(cart_item_params)
    redirect_to carts_path
  end

  def destroy
    @cart_item.destroy
    flash[:warning] = "成功将 '#{@cart_item.product.title}' 从购物车中删除！"
    redirect_back(fallback_location: root_path)
  end

  private
    def cart_item_params
      params.require(:cart_item).permit(:quantity)
    end
    
    def set_cart_item
      @cart_item = current_cart.cart_items.find(params[:id])
    end
end
