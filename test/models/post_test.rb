require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should be invalid without a title" do
    @post.title = nil
    assert_nil @post.title
    assert_equal false, @post.valid?
  end

end
