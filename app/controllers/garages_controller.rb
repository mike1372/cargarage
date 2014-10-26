class GaragesController < ApplicationController

	def show
		@garage = Garage.find(params[:id])
	end

	def showall
		@garages = Garage.all
	end

	def showmy
		@garages = Garage.where(:user_id => params[:id])
	end

	def new
		@garage = Garage.new
	end

	def create
		@garage = Garage.new(garage_params)

		if @garage.save
			redirect_to root_path, :notice => 'New garage created successfully'
		else
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