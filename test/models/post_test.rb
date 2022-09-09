require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "validate title presence" do
    post = Post.create(body:"Test", published:true)
    assert_equal post.errors[:title], ["can't be blank"]
  end
end
