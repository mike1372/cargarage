class MorepicturesController < ApplicationController

	def new
		@picture = Morepicture.new
	end

	def create
		@picture = Morepicture.new
		@picture.extra_picture = params[:morepicture][:extra_picture]
		@picture.car_id = params[:morepicture][:car_id]
		
		if @picture.save
			redirect_to car_path(params[:morepicture][:car_id])
		else
			flash.notice = 'Picture not saved, please try again'
			render :new
		end
	end

	def destroy
		@picture = Morepicture.find(params[:id])
		@picture.destroy
		redirect_to car_path(@picture.car_id), :notice => 'Picture deleted successfully'
	end

end