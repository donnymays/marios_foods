class ProductsController < ApplicationController
  load_and_authorize_resource :except => :create
  def index
    @products = Product.order(:name).page(params[:page])
    render :index
  end

  def new
    @product = Product.new
    render :new
  end

  def create
    @product = Product.new(products_params)
    if @product.save
      redirect_to product_path(@product)
      flash[:notice] = "Product successfully added!"
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def show
    @product = Product.find(params[:id])
    render :show
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(products_params)
      redirect_to product_path(@product)
      flash[:notice] = "Product successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end
  
  private
    def products_params
      params.require(:product).permit(:name, :cost, :country_of_origin)
    end
end