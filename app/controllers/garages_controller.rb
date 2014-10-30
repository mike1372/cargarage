class GaragesController < ApplicationController

	def show
		@garage = Garage.find(params[:id])
	end

	def showall # Change this to index
		@garages = Garage.all
	end

	def showmy
		@garages = Garage.where(:user_id => @current_user.id)
	end

	def move
		@cars = Car.where(:user_id => @current_user.id)
		@garage = Garage.find params[:garage_id]
	end

	def movein
		@garage = Garage.find(params[:car][:garage_id])
		@car = Car.find(params[:garage][:car_ids])

		if !@garage.cars.include?(@car) # Ensure the car is not alredy in the garage
			@garage.cars << @car
			@garage.save
			redirect_to garage_path(@garage.id), :notice => 'Car moved in successfully'
		else
			flash.notice = 'This car is aready in this garage, please choose another car'
			render :move
		end
	end

	def moveo
		@cars = Car.where(:user_id => params[:garage_id])
		@garage = Garage.find params[:garage_id]
	end

	def moveout
		garage = Garage.find(params[:car][:garage_id])
		car = Car.find(params[:car][:car_ids])
		garage.cars.delete(car)
		redirect_to garage_path(garage.id), :notice => 'Car moved out successfully'
	end

	def new
		@garage = Garage.new
	end

	def create
		@garage = Garage.new(garage_params)
		@garage.user_id = @current_user.id

		if @garage.save
			redirect_to garage_path(@garage.id), :notice => 'New garage created successfully'
		else
			flash.notice = 'Garage not created, please try again'
			render :new
		end
	end

	def edit
		@garage = Garage.find(params[:id])
	end

	def update
		@garage = Garage.find(params[:id])
		@garage.update(garage_params)
		redirect_to garage_path, :notice => 'Garage updated successfully'
	end

	def destroy
		@garage = Garage.find(params[:id])
		@garage.destroy
		redirect_to root_path, :notice => 'Garage deleted successfully'
	end

	private

	def garage_params
		params.require(:garage).permit(:name, :theme, :details)
	end
end