class CarsController < ApplicationController

	def show
		@car = Car.find(params[:id])
		@comments = Comment.where(:car_id => @car.id)
		@comment = Comment.new
	end

	def showall # Change this to index
		@cars = Car.all
	end

	def showmy
		@cars = Car.where(:user_id => @current_user.id)
	end

	def showgarage
		cars = Car.all
		garage = Garage.find(params[:garage_id])
		@cars_in_garage = garage.cars
	end

	def new
		@car = Car.new
	end

	def create
		@car = Car.new(car_params)
		@car.user_id = @current_user.id

		if @car.save
			redirect_to car_path(@car.id), :notice => 'New car created successfully'
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
		redirect_to car_path :notice => 'Car updated successfully'
	end

	def destroy
		@car = Car.find(params[:id])
		@car.destroy
		redirect_to root_path :notice => 'Car deleted successfully'
	end

	private

	def car_params
		params.require(:car).permit(:make, :model, :year, :colour, :body_type, :engine, :transmission, :wheels_tyres, :other_details, :primary_picture)
	end
end