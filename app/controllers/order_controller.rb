class OrdersController < ApplicationController
  def create
    @order = Order.new(
                      product_id: params[:product_id]
                      quantity: params[:quantity],
                      subtotal: Product.find(params[:product_id]).price * params[:quantity].to_i,
                      tax: 

                      )

    @order.save
      render 'show.json.jbuilder' 
    end
  end
