class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:show, :new]
  before_action :authenticate_admin!
  def new 
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
    render :new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    render :show
  end

  def edit
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    redirect_to product_path(@product)
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to product_path(@review.product)
    else
      render :edit
    end
  end

  def destroy 
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path(@review.product)
  end
end

private
  def review_params
    params.require(:review).permit(:author, :content, :rating)
end