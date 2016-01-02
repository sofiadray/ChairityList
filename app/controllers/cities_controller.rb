class CitiesController < ApplicationController

	def index

		@cities = City.all	

	end

	def show
		@categories = Category.all
		@city = City.find(params[:id])

		@ids = CharityCity.where(city_id: @city.id)
		
		@charities = Charity.where(id: @ids)
	end


end

