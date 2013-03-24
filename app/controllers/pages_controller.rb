class PagesController < ApplicationController
  def home
    @products = Product.first(4)
    @topics = Topic.last(5).reverse
  end

  def info
  end

  def cases
  end

  def message
  end

  def honor
  end

  def contact
  end
end
