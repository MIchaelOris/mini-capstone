class SuppliersController < ApplicationController

  def index

      suppliers = Supplier.all

      search_term = params[:search]

      if search_term
      suppliers = Supplier.all.where('name iLIKE ? "%#{search_term}%"') 
                               
    end

    sort_attribute = params[:sort]
    if sort_attribute
      @suppliers = @suppliers.order(sort_attribute => :asc)
    end

      render 'index.json.jbuilder'
    end

    def create 
      @supplier = supplier.new(
                          name: params[:name], 
                          email: params[:email], 
                          phone_number: params[:phone_number]
                          )
      if @supplier.save
      render 'show.json.jbuilder'
    else
      render json: {errors:supplier.errors.full_messages}, status: :unprocessable_entity
    end 
  end 

    def show
      @supplier = supplier.find(params[:id])
      render 'show.json.jbuilder'

    end 


    def update 

      @supplier = @supplier.find(params[:id])
      @supplier.name = params[:name]
      @supplier.email =params[:email]
      @supplier.phone_number =params[:phone_number]

      if supplier.save
        render json: suppliers.as_json
      else 
        render json: {messages:supplier.errors.full_messages}, status: :unprocessable_entity
      end 

    end 

    def destroy
      supplier = supplier.find(params[:id])
      supplier.destroy
      render json: {message: "Succesfully destroyed the Toy! ##{supplier.id}."}
    end

end 