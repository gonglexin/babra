class ProductsController < ApplicationController
  def index
    if params[:category]
      category = Category.find(params[:category])
      @products = category.products.page(params[:page]).per_page(8)
    else
      @products = Product.page(params[:page]).per_page(8)
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
