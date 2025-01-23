# lib/scraper.rb

module Scraper
  def scrap_names(page)
    # Votre logique de scraping ici
    # Par exemple, vous pouvez utiliser Nokogiri pour scraper la page
    require 'nokogiri'
    require 'open-uri'

    doc = Nokogiri::HTML(URI.open(page))
    names = doc.css('selector_for_names').map(&:text)
    names
  end
end