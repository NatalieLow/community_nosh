
desc 'scrape this shit'
task :scrape => :environment do
  require 'open-uri'

  #Smitten Kitchen

  #sk_doc = Nokogiri::HTML(open('http://smittenkitchen.com/recipes/').read)
  #
  #sk_doc.css('ul.lcp_catlist li a').each do |a|
  #  title = a['title']
  #  url = a['href']
  #  blog_name = "smitten kitchen"
  #  post = Post.create url: url, title: title, blog_name: blog_name
  #  puts "Created: #{post}"
  #end
  #
  #Post.where(img_url: nil).each do |post|
  #  post.html = open(post.url).read
  #  post_doc = Nokogiri::HTML(post.html)
  #  #date = Date.parse(post_doc.css('div.date').text)
  #  post.img_url = post_doc.css('div.entry img')[0]['src']
  #  post.save
  #  puts "Modified: #{post.inspect}"
  #end

  #Not Without Salt
  #For this site, blog post title often does not = recipe title.
  #For my site, I'll want to pull the recipe title if/when different.
  #There are a few posts w/o a recipe title-- in these cases I won't
  #want to pull the blog post at all.
  #
  #nws_doc = Nokogiri::HTML(open('http://notwithoutsalt.com/recipes').read)
  #
  #
  #nws_doc.css("div#main li a").each do |a|
  #  title = a['title']
  #  url = a['href']
  #  blog_name = "not without salt"
  #
  #  post = Post.create url: url, title: title, blog_name: blog_name
  #
  #  if post.valid?
  #    puts "Created: #{post.inspect}"
  #  else
  #    puts "Did not create: #{post.inspect}"
  #  end
  #end


  Post.where("blog_name = 'not without salt'").each do |post|
    post.html = open(post.url).read
    css_img = Nokogiri::HTML(post.html).css('div.intro-text img').select{|img| img[:width].to_i > 200}
    if !css_img.nil?
      last_image = css_img.last
      if !last_image.nil?
        post.img_url = last_image['src']
      end
    end


    recipe_title = Nokogiri::HTML(post.html).css('h2').text

    unless recipe_title == ""
      post.title = recipe_title
      new_url = post.url + "#recipe" unless post.url.ends_with?('#recipe')
      post.url = new_url
    end

    post.save

    puts "Final post title: #{post.title}"
    puts "Final post url: #{post.url}"
  end


  # Spoon Fork Bacon

  #sfb_categories = Nokogiri::HTML(open("http://www.spoonforkbacon.com/categories/").read)
  #
  #sfb_categories.css('#category_index_div_inner ul li').each do |li|
  #  category = li.css('a')[1]['href']
  #  sfb_apps = Nokogiri::HTML(open("#{category}").read)
  #
  #  sfb_apps.css('#category_post_div').each do |post_div|
  #    url = post_div.css('#category_thumbnail_link_area a')[0]['href']
  #    title = post_div.css('#category_thumbnail_link_area a')[0]['title']
  #    html = open(url).read
  #    blog_name = "spoon fork bacon"
  #    img_url = post_div.css('#category_post_thumb img')[1]['src'] rescue nil
  #    puts "img_url.nil? #{img_url.nil?}"
  #    if img_url.nil?
  #      sfb_post = Nokogiri::HTML(open("#{url}").read)
  #      img_urls = []
  #      sfb_post.css('#blog_content_container a img').each do |img|
  #        img_urls << img['src']
  #      end
  #      img_url = img_urls.last
  #    end
  #
  #    new_url = url + '#blog_print_area'
  #
  #    post = Post.create url: new_url, html: html, title: title, blog_name: blog_name,
  #                       img_url: img_url
  #    puts "Created: #{post}"
  #  end
  #end
  #
  #





end

