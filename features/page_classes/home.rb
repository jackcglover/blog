require 'page-object'

class Home
  include PageObject

  page_url 'localhost:4567/homepage'

  button(:new_post, id: 'new_post')

end