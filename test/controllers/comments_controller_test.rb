require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
	test "create comment" do
		user = FactoryGirl.create(:user)
		sign_in user
		place = FactoryGirl.create(:place)
		assert_difference 'Comment.count', +1 do
			post :create, :place_id => place.id, :comment => {
				:message => 'Howdie',
				:rating => 'one star'
				}
		end
		assert_redirected_to place_path(place)
		assert_equal 1, user.comments.count

		comment = user.comments.first
		assert_equal 'Howdie', comment.message
		assert_equal 'one star', comment.rating

	end
end
