class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end


    def create
      @product = Product.create(params.require(:product).permit(:name, :price, :company_id))
      if @product.save
        redirect_to product_path(@product)
      else
        render :new
      end
    end

    def show
      @product = Product.find(params[:id])
    end

end
