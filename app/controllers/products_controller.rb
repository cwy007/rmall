class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :add_to_cart]

  def index
    @products = Product.all.recent.page(params[:page]).per(12)
  end

  def show
  end

  def add_to_cart
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "你已成功将 '#{@product.title}' 加入购物车"
    else
      flash[:warning] = "你的购物车內已有此商品"
    end
    redirect_back(fallback_location: root_path)
  end

  private

    def set_product
      @product = Product.find(params[:id])
    end
end
