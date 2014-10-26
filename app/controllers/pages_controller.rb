class PagesController < ApplicationController
	skip_before_action :authenticate

	def index
		@garages = Garage.all
	end

	def about
	end

end