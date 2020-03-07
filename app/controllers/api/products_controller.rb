class Api::ProductsController < ApplicationController

def index
  @products = Product.all
  render "index.json.jb"
  end

  def query
    p "here are the parameters"
    @flavor=  params["flavor"]
    @flavor =  @flavor.upcase
    p @flavor
    @price = params["price"]
    #@id = params["id"]
    #@product = Product.find_by(id: params["id"])
    #p @product
    render "query.json.jb"
  end

  def new_query
  @product = Product.find_by(id: params["id"])
  p @product
  render "new_query.json.jb"
  end

  def segment 
    p "AZUL E A COR MAIS FORTE"
    @flavor = params["flavor"]
    render "segment.json.jb"
  end

  def body_parameter
    @first_name = params["name"]
    render "body_parameter.json.jb"
  end
end 