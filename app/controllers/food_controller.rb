class FoodController < ApplicationController

  def feed
    require 'net/http'
    require 'uri'
    uri = URI('http://68.144.73.116:3000/feed/1')
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Post.new(uri.path)
    res = http.request(request)
    puts res.body
  end

end
