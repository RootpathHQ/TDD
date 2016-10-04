require 'test_helper'

class PostHelperTest < ActionView::TestCase
  test "should get show" do
    post = posts(:one)
    assert_dom_equal %{<a href="/posts/#{post.id}">TitleString</a>}, link_to_post(post)
  end
end
