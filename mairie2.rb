#!/usr/bin/ruby
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'


    doc = Nokogiri::HTML(open('http://annuaire-des-mairies.com/95/ambleville.html'))
    doc.css('p:contains("@")').each do |email|
    puts email.text
end


page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
links = page.css("a.lientxt")
liste = links.each{|departement|
    link  = "http://annuaire-des-mairies.com" + departement['href']
    puts link
    
page = Nokogiri::HTML(open(link))
page.css('p:contains("@")').each do |node|
puts node.text
end
}