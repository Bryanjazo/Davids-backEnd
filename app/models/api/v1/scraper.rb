class Api::V1::Scraper < ApplicationRecord
#Api::V1::Scraper.blog_creation
    def self.title(blog)
        doc = Nokogiri::HTML(URI.open("https://gokhshteinmedia.com/2021/08/will-crypto-cars-become-the-future-of-driving/"))

        title = doc.css(".elementor-heading-title")
        title.take(1).each do |title| 
     
          blog.header = title.inner_html
        end
        blog.save
    end


    def self.blog_creation 
        blog = Api::V1::Blockchain.new()
    
        Api::V1::Scraper.title(blog)
    end
end
