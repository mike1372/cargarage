class CarsController < ApplicationController

	def show
		@car = Car.find(params[:id])
	end

	def showall
		@cars = Car.all
	end

	def showmy
		@cars = Car.where(:user_id => params[:id])
	end

	def new
		@car = Car.new
	end

	def create
		@car = Car.new(car_params)

		if @car.save
			params.inspect
			redirect_to car_path, :notice => 'New car created successfully'
		else
			render :new
		end
	end

	def edit
		@car = Car.find(params[:id])
	end

	def update
		@car = Car.find(params[:id])
		@car.update(car_params)
		redirect_to cars_path :notice => 'Car updated successfully'
	end

	def destroy
		@car = Car.find(params[:id])
		@car.destroy
		redirect_to root_path :notice => 'Car deleted successfully'
	end

	private

	def car_params
		params.require(:car).permit(:make, :model, :year, :colour, :body_type, :engine, :transmission, :wheels_tyres, :other_details)
	end
end