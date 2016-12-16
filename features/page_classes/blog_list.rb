require 'page-object'

class BlogList
  include PageObject

  page_url 'localhost:4567/blog_list'

  button(:blog_list, id: 'blog_list')

end