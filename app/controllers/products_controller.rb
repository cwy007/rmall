class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :add_to_cart]
  
  def index
    @products = Product.all.recent.page(params[:page]).per(12)
  end

  def show
  end

  def add_to_cart
    flash[:notice] = "test add to cart"
    redirect_back(fallback_location: root_path)
  end

  private

    def set_product
      @product = Product.find(params[:id])
    end
end
