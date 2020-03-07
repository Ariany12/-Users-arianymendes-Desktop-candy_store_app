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
end 