class UsersController < ApplicationController
	
	def show
		# tried to user .where() instead of .find()
		@user = User.find(params[:id])
		# if @user.blank?
		# 	render :text => "Not found", :status => :not_found
		# end
	end

end
