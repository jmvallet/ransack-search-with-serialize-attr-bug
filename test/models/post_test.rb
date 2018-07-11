require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "Ransack search on serialized attribute" do
    assert_equal 1, Post.ransack(content_cont: "hello").result(distinct: true).count
  end

end
