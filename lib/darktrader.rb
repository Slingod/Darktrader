#rspec lib/darktrader.rb pour le lancer ! 
require 'rubygems'
require 'nokogiri'
require 'open-uri'

# recuperer les href pour aller a chaque page du ville de Val d'oise
page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

def scrap_names(page)
    names_array = page.xpath('//tbody//td[3]//div').collect(&:text)
   names_array
end

def scrap_values(page)
    values_array = page.xpath('//tbody//td[5]//div').collect(&:text)
    values_array
end

def link_crypto(noms, values)
    link = noms.zip(values).to_h
    puts link
end

def perform(page)
    link_crypto(scrap_names(page), scrap_values(page))
end

perform(page)