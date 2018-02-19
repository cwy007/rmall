class Admin::OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required
  layout "admin"

  def index
    @orders = Order.recent.page(params[:page])
  end

  def show
    @order = Order.find(params[:id])
    @product_lists = @order.product_lists 
  end
end
