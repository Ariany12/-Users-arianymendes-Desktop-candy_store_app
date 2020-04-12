class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      flavor: params[:flavor],
      image_url: params[:image_url]
    )
    if @product.save
      render json: {message: "you create a new product in your db"}
    else 
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.flavor = params[:flavor] || @product.flavor
    @product.image_url = params[:image_url] || @product.image_url

    if @product.save
      render json: {message: "your product was update"}
    else 
      render json: {errors: @product.errors.full_messages}
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    if @product.destroy
      render json: {message: "your product was delete"}
    else 
      render json: {errors: @product.errors.full_messages}
    end
  end
end 