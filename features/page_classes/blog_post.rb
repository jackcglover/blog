require 'page-object'
require 'data_magic'

class BlogPost
  include PageObject
  include DataMagic

  page_url "localhost:4567/blog_post"

  text_field(:title, :name => 'title')
  text_field(:author, :name => 'author')
  text_area(:content, :name => 'content')
  text_field(:date, :name => 'date')
  button(:submit, :id => 'save')

end