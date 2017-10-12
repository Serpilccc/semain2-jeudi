#!/usr/bin/ruby
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'


    doc = Nokogiri::HTML(open('http://annuaire-des-mairies.com/95/ambleville.html'))
    doc.css('p:contains("@")').each do |email|
    puts email.text
end


def get_all_the_urls_of_val_doise()
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
    links = page.css("a.lientxt")
    liste = links.each{|url| puts  'http://annuaire-des-mairies.com/' + url['href']}
end

    get_all_the_urls_of_val_doise
   link = Nokogiri::HTML(open())
    link.css('p:contains("@")').each do |email|
    puts email.text
end