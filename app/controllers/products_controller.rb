class ProductsController < ApplicationController

    def index

      products = Product.all
      render json: products.as_json

    end

    def create 
      product = Product.new(
                          name: params[:name], 
                          price: params[:price], 
                          image_url: params[:image_url], 
                          description: params[:description]
                          )
      product.save
      render json: products.as_json

    end 

    def show
      product = Product.find(params[:id])
      render json: product.as_json

    end 


    def update 

    product = Product.find(params[:id])
    product.title = params[:name]
    product.chef =params[:price]
    product.ingredients =params[:image_url]
    product.directions =params[:description]
    product.save

    render json: products.as_json

    end 

    def destroy
      product = product.find(params[:id])
      product.destroy
      render json: {message: "Succesfully destroyed the Toy! ##{product.id}."}
    end

end 
