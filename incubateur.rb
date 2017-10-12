require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'


doc = Nokogiri::HTML(open("https://www.challenges.fr/start-up/start-up-les-principaux-incubateurs-a-paris_73494"))
doc.xpath('/html/body/div[3]/main/section[2]/div[2]/article/div[3]/ul/li[4]/a/h3').each do |node|
puts node.text
end


html = open("https://www.challenges.fr/start-up/start-up-les-principaux-incubateurs-a-paris_73494/slide_4")
doc = Nokogiri::HTML(html)

doc.xpath('/html/body/div[3]/main/section[2]/div[3]/div[2]/div/div[2]/span[3]/text()').map do |element|
    puts element.inner_text
end

