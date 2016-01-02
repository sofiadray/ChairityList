class CharitiesController < ApplicationController
	def index
	end

	def show
		@charity = Charity.find(params[:id])
	end

	def new
		@charity = Charity.new
	end

	def create
		@charity = Charity.new(charity_params)

		if @charity.save
			flash[:message] = "Here is your Chairity's page!"
			redirect_to charity_path(params[:id])
		else
			render :new
		end

	end

	def edit
		@charity = Charity.find(params[:id])
	end

	def update
		@charity = Charity.find(params[:id])
		@charity.update_attributes
	end

	def destroy
	end

private

	def charity_params
		require(:charity).permit!
	end


end
