# spec/darktrader_spec.rb

require 'spec_helper'
require_relative '../lib/scraper'

RSpec.describe "the names_method" do
  include Scraper

  let(:page) { "https://coinmarketcap.com/all/views/all/" } # Définissez la variable `page` ici

  it "should not raise errors" do
    expect { scrap_names(page) }.to_not raise_error
  end
end