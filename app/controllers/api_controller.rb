class ApiController < ApplicationController
    require 'connection'
    def index
        @post = Connection.get('/products')
    end
end
