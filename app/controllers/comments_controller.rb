class CommentsController < ApplicationController
	before_action :authenticate_user!
	def create
		@place = Place.find(params[:place_id])
		@comment = @place.comments.create(comments_params.merge(:user => current_user))
		if @comment.valid?
			redirect_to place_path(@place)
		else
			render "places/show", :status => :unprocessable_entity
		end
	end

	private

	def comments_params
		params.require(:comment).permit(:message, :rating)
	end
end
