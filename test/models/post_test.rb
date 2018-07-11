require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "Ransack search on serialized attribute" do
    assert_equal 1, Post.where("content like ?", "%world%").count
    assert_equal 1, Post.ransack(content_cont: "world").result(distinct: true).count
  end

end
