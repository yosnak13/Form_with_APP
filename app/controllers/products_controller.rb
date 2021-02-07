class ProductsController < ApplicationController
PER = 20

  def index
    @products = Product.all
    # @products = Product.find(params[:id])
    @products = Product.page(params[:page]).per(PER)
  end

  def new
    @products = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to products_path
  end

  def edit
  end

  def destroy
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :description, :maker_name)
  end
end
