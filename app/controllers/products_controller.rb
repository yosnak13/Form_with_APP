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
  end

  def edit
  end

  def destroy
  end
end
