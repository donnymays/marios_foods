class HomeController < ApplicationController
  def index
    @products = Product.all
    @new_products = Product.most_recent
    @reviewed_product = Product.most_reviewed
  end
end