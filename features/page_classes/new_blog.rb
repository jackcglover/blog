require 'page-object'
require 'data_magic'

class NewBlog
  include PageObject
  include DataMagic

  text_field(:title, :name => 'title')
  text_field(:author, :name => 'author')
  text_field(:date, :name => 'date')
  text_area(:content, :name => 'content')

  button(:submit, :id => 'Submit')

  def valid_new_post
    populate_page_with data_for :new_post
    self.submit
  end

end