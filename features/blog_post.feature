Feature: creating a blog post

  Scenario: posting a new blog
    When I post a blog on the page
    Then The post has a title, author, and content