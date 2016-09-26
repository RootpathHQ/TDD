require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should get new" do
    get '/posts/new'
    assert_response :success
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end
end
