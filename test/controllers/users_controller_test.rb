require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  
  test "dashboard show page" do
  	user = FactoryGirl.create(:user)
  	sign_in user
  	get :show, :id => user.id
  	assert_response :success
  end

  # test "dashboard not found" do
  # 	get :show, :id => 'SLASH'
  # 	assert_response :not_found
  # end
  
end
