require 'rubygems'
require 'readability'
require 'open-uri'

#nws_doc = Nokogiri::HTML(open('http://notwithoutsalt.com/recipes').read)
#
#
#
#
#title = nws_doc.css("div#main li a")[0]['title']
#url = nws_doc.css("div#main li a")[0]['href']
#blog_name = "not_without_salt"
html = open("http://notwithoutsalt.com/2012/02/01/dinner-in-15-a-lighter-caesar/").read
post_doc = Nokogiri::HTML(html)
img_url = post_doc.css('div.intro-text img')[0]['src']
puts img_url








