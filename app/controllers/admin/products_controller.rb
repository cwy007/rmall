class Admin::ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  layout "admin"

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_product_path(@product), notice: "product created!"
    else
      render "new"
    end
  end

  def update
    if @product.update(product_params)
      redirect_to admin_product_path(@product), notice: "product updated!"
    else
      render "edit"
    end
  end

  def destroy
    @product.destroy
    redirect_to admin_products_path, alert: "product deleted"
  end

  private

    def product_params
      params.require(:product).permit(:title, :description, :quantity, :price)
    end

    def set_product
      @product = Product.find(params[:id])
    end
end
