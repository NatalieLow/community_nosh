
desc 'scrape this shit'
task :scrape => :environment do
  require 'open-uri'

  #Smitten Kitchen

  #sk_doc = Nokogiri::HTML(open('http://smittenkitchen.com/recipes/').read)
  #
  #sk_doc.css('ul.lcp_catlist li a').each do |a|
  #  title = a['title']
  #  href = a['href']
  #  blog_name = "smitten_kitchen"
  #  post = Post.create url: href, title: title, blog_name: blog_name, html: sk_doc
  #  puts "Created: #{post}"
  #end

  #Post.where(img_url: nil).each do |post|
  #  puts post
  #  post_doc = Nokogiri::HTML(open(post.url).read)
  #  #post.html = post_doc
  #  post.blog_name = "smitten_kitchen"
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

  #nws_doc = Nokogiri::HTML(open('http://notwithoutsalt.com/recipes').read)


  #nws_doc.css("div#main li a").each do |a|
  #  title = a['title']
  #  url = a['href']
  #  blog_name = "not_without_salt"
  #
  #  post = Post.create url: url, title: title, blog_name: blog_name
  #
  #  if post.valid?
  #    puts "Created: #{post.inspect}"
  #  else
  #    puts "Did not create: #{post.inspect}"
  #  end
  #end
  #not_updateds = []
  #
  #Post.where(img_url: nil).each do |post|
  #  post.html = open(post.url).read
  #  css_img = Nokogiri::HTML(post.html).css('div.intro-text img')
  #  if !css_img.nil?
  #    first_image = css_img[0]
  #    if !first_image.nil?
  #      post.img_url = first_image['src']
  #    end
  #  end
  #  post.save
  #
  #
  #  if post.html && post.img_url
  #    puts "Updated: #{post.inspect}"
  #  else
  #    not_updateds << post.inspect
  #  end
  #
  #  puts "Posts not fully updated: #{not_updateds}"
  #end

  #Post.where("blog_name = 'not_without_salt'").each do |post|
  #  recipe_title = Nokogiri::HTML(post.html).css('h2').text
  #  puts "Post #{post.id}"
  #  puts "Recipe title: #{recipe_title}"
  #  puts "Post title: #{post.title}"
  #
  #end
  Post.where("blog_name = 'not_without_salt'").each do |post|
    post.blog_name = 'not without salt'
    post.save
    puts "Post #{post.id} blogname has been changed to #{post.blog_name}"
  end

  Post.where("blog_name = 'smitten_kitchen'").each do |post|
    post.blog_name = 'smitten kitchen'
    post.save
    puts "Post #{post.id} blogname has been changed to #{post.blog_name}"
  end

end