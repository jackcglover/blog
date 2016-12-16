require 'page-object'
require 'data_magic'



include PageObject::PageFactory

When(/^I post a blog on the page$/) do
  visit_page(Home).new_post
  @post = on_page(NewBlog).valid_new_post

end

Then (/^The post has a title, author, and content$/) do
  on_page(BlogPost) do |div|
    expect(div.title).to eq @post['title']
    expect(page.author).to_not eq ""
    expect(page.content).to_not eq ""
    expect(page.date).to_not eq ""
  end
end

When (/^I post a blog with a duplicate title$/) do
  pending
end

Then (/^I receive an error$/) do
  pending
end
