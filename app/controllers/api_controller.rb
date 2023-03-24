class ApiController < ApplicationController
  require 'faraday'
  def index
    @conn = Faraday.new(url: 'https://dummyjson.com')
    get_products = @conn.get('/products')
    @products = JSON.parse(get_products.body)
    if get_products.success?
      render 'index'
    else
      raise StandardError, "error al conectarse a la api"
     end
  end
end
