class CartItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cart_item, only: [:update, :destroy]

  # TODO: 库存 quantity 随着购买情况动态变化
  def update
    if @cart_item.product.quantity >= cart_item_params[:quantity].to_i
      @cart_item.update(cart_item_params)
      flash[:notice] = "成功变更数量"
    else
      flash[:warning] = "数量不足以加入购物车"
    end

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
