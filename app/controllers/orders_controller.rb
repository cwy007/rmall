class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def show
    @order = Order.find_by_token(params[:id])
    @product_lists = @order.product_lists
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    @order.total = current_cart.total_price
    @cart_items = CartItem.includes(:product).where(cart_id: current_cart.id)

    if @order.save
      @cart_items.each do |cart_item|
        product_list = ProductList.new
        product_list.order = @order
        product_list.product_name = cart_item.product.title
        product_list.product_price = cart_item.product.price
        product_list.quantity = cart_item.quantity
        product_list.save
      end
      current_cart.empty!
      OrderMailer.notify_order_placed(@order).deliver!
      
      redirect_to order_path(@order.token)
    else
      render "carts/checkout"
    end
  end

  def pay_with_alipay
    @order = Order.find_by_token(params[:id])
    @order.set_payment_with!("alipay")
    @order.pay!

    redirect_to order_path(@order.token), notice: "使用支付宝完成付款！"
  end

  def pay_with_wechat
    @order = Order.find_by_token(params[:id])
    @order.set_payment_with!("wechat")
    @order.pay!

    redirect_to order_path(@order.token), notice: "使用微信完成支付！"
  end

  private

    def order_params
      params.require(:order).permit(:billing_name, :billing_address, :shipping_name, :shipping_address)
    end
end
