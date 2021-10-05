

require "httparty"
require 'open-uri'
class Apicrypto < ApplicationRecord

def self.getCryptosModel
    url = "https://api.nomics.com/v1/currencies/ticker?key=#{ENV['API_KEY']}&ids=BTC,ETH,XRP&interval=1h&per-page=100&page=1"
    binding.pry
    crypto_array =  HTTParty.get(url)
end


end
