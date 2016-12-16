require 'sinatra'

posts = Array.new

class Post
  attr_accessor :title, :author, :content, :date
end

get '/homepage' do
  haml :index
end

get '/new_post' do
  haml :new_post
end

post '/blog_post' do
  new_post = Post.new
  new_post.title = params[:title]
  new_post.author = params[:author]
  new_post.content = params[:content]
  new_post.date = params[:date]
  posts << new_post

  haml :blog_post, :locals => {:new_post => posts.first}
end

get '/blog_list' do
  index = params[:i].to_i
  haml :blog_list, :locals => {:blog_list => posts[index]}
end

