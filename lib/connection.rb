require 'faraday'
require 'json'

class Connection
  def self.get(path, query = nil)
    response = connection.get(path, query)
    JSON.parse(response.body)
  end

  def self.connection
    Faraday.new(url: 'https://dummyjson.com') do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end