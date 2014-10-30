class CommentsController < ApplicationController

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new
		@comment.comment_details = params[:comment][:comment_details]
		@comment.car_id = params[:comment][:car_id]
	
		if @comment.save
			redirect_to car_path(params[:comment][:car_id])
		else
			flash.notice = 'Comment not saved, please try again'
			render :new
		end
	end

end