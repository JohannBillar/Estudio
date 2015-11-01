require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert false
  # end
  test "human_rating" do
  	comment = Comment.new(:rating => '1_star').humanized_rating
  	expected = 'one star'
  	actual = comment
  	assert_equal expected, actual
  end

end
