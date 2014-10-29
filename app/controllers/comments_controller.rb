class CommentsController < ApplicationController

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new
		@comment.comment_details = params[:comment][:comment_details]
		@comment.car_id = params[:comment][:car_id]
		@comment.save
		raise params.inspect
		if @comment.save
			redirect_to car_path(params[:comment][:car_id])
		else
			render :new
		end
	end

end