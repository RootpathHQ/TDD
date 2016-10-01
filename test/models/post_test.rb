require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should be invalid without a title" do
    # Sets Post Title to nil
      posts(:one).title = nil
    # Assertion passes if Post Title is nil
      assert_nil posts(:one).title
    # Assertion passes if Post is invalid
      assert_equal false, posts(:one).valid?
  end

  test "should be invalid without a body" do
    # Sets Post Body to nil
      posts(:one).body = nil
    # Assertion passes if Post Body is nil
      assert_nil posts(:one).body
    # Assertion passes if Post is invalid
    assert_equal false, posts(:one).valid?
  end

  test "post title should be a string" do
    # Assertion passes if Post Title is a string
      assert_equal true, posts(:one).title.is_a?(String)
  end

  test "post body should be a string" do
    # Assertion passes if Post Body is a string
      assert_equal true, posts(:one).body.is_a?(String)
  end
end
