class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update]
  PER = 20

  def index
    @products = Product.all
    @products = Product.page(params[:page]).per(PER)
  end

  def show
  end

  def new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to products_path
  end

  def edit
  end

  def update
    @product.update(product_params)
    redirect_to product_path @product
  end

  def destroy
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :description, :maker_name)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
