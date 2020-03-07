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
    render "query.json.jb"
  end

  def segment 
    p "AZUL E A COR MAIS FORTE"
    @flavor = params["flavor"]
    render "segment.json.jb"
  end
end 