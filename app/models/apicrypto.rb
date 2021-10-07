

require "httparty"
require 'open-uri'
class Apicrypto < ApplicationRecord

def self.getCryptosModel
    url = "https://newsdata.io/api/1/news?apikey=#{ENV['API_KEY']}&country=us"
    crypto_array =  HTTParty.get(url)
end


end
