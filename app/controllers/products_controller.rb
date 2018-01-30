class ProductsController < ApplicationController

    def index

      products = Product.all

      search_term = params[:search]

      if search_term
      products = Product.all.where('name iLIKE ? "%#{search_term}%"') 
                               
    end

    sort_attribute = params[:sort]
    if sort_attribute
      @products = @products.order(sort_attribute => :asc)
    end

      render 'index.json.jbuilder'
    end

    def create 
      @product = Product.new(
                          name: params[:name], 
                          price: params[:price], 
                          image_url: params[:image_url], 
                          description: params[:description]
                          supplier_id: params[:supplier_id]
                          )
      if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors:product.errors.full_messages}, status: :unprocessable_entity
    end 
  end 

    def show
      @product = Product.find(params[:id])
      render 'show.json.jbuilder'

    end 


    def update 

      @product = @Product.find(params[:id])
      @product.name = params[:name]
      @product.price =params[:price]
      @product.image =params[:image_url]
      @product.description =params[:description]

      if product.save
        render json: products.as_json
      else 
        render json: {messages:product.errors.full_messages}, status: :unprocessable_entity
      end 

    end 

    def destroy
      product = product.find(params[:id])
      product.destroy
      render json: {message: "Succesfully destroyed the Toy! ##{product.id}."}
    end

end 
