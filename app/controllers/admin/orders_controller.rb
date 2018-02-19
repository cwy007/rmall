class Admin::OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required
  before_action :set_order, only: [:show, :ship, :shipped, :cancel, :return]
  layout "admin"

  def index
    @orders = Order.recent.page(params[:page])
  end

  def show
    @product_lists = @order.product_lists
  end

  def ship
    @order.ship!
    OrderMailer.notify_ship(@order).deliver!
    redirect_back(fallback_location: admin_root_path)
  end

  def shipped
    @order.deliver!
    redirect_back(fallback_location: admin_root_path)
  end

  def cancel
    @order.cancel_order!
    OrderMailer.notify_cancel(@order).deliver!
    redirect_back(fallback_location: admin_root_path)
  end

  def return
    @order.return_good!
    redirect_back(fallback_location: admin_root_path)
  end

  private

    def set_order
      @order = Order.find(params[:id])
    end
end
