class CartedProductsController < ApplicationController
  def create
    @cartedproduct = Cartedproduct.new(
                            product: params[:product],
                            quantity: params[:quantity,
                            )
      
      if @cartedproduct.save
        render 'show.json.jbuilder'
      else
        render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
      end
    else
      render json: {message: "you are not authorized"}, status: :unauthorized
    end
  end
end
