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
#html = open("http://notwithoutsalt.com/2012/02/01/dinner-in-15-a-lighter-caesar/").read
#post_doc = Nokogiri::HTML(html)
#img_url = post_doc.css('div.intro-text img')[0]['src']
#puts img_url

#sfb_apps = Nokogiri::HTML(open("http://www.spoonforkbacon.com/category/appetizers/").read)
#
#url = sfb_apps.css('#category_post_thumb a')[0]['href']
#puts url
#
#img_url = sfb_apps.css('#category_post_thumb a').css('#category_post_thumb img')[1]['data-lazy-src']
#puts img_url
#
#title = sfb_apps.css('#category_post_thumb a')[0]['title']
#puts title
#
#html = open(url).read
#
#
#url = url + '#blog_print_area'
#puts url
#
#blog_name = "spoon fork bacon"

sfb_post = Nokogiri::HTML(open("http://www.spoonforkbacon.com/2013/06/cochinita-pibil/").read)
  img_urls = []
sfb_post.css('#blog_content_container a img').each do |img|
  img_urls << img['src']
end
img_url = img_urls.last

puts "#{img_url}"








