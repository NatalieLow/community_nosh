
desc 'scrape this shit'
task :scrape => :environment do
  #Smitten Kitchen
  require 'open-uri'

  sk_doc = Nokogiri::HTML(open('http://smittenkitchen.com/recipes/').read)

  sk_doc.css('ul.lcp_catlist li a').each do |a|
    title = a['title']
    href = a['href']
    post = Post.create url: href, title: title
    puts "Created: #{post}"
  end

  #url_data = sk_doc.css('ul.lcp_catlist li a').map{ |link|
  #  link['href'] }
  #
  #title_data = sk_doc.search('ul.lcp_catlist li').map{|li| li.text}
  #
  #img_urls = []
  #
  #post_docs = []
  #
  #url_data.each do |post_url|
  #  post_docs << Nokogiri::HTML(open(post_url).read)
  #end
  #
  #post_dates = post_docs.map{|post_doc| post_doc.css('div.date').text}
  #

  #post_docs.each do |post_doc|
  #  img_url = post_doc.css('div.entry p')[1]['img src']
  #end



end