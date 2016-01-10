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
			redirect_to charity_path(@charity.id)
		else
			render :new
		end

	end

	def edit
		@charity = Charity.find(params[:id])
	end

	def update
		@charity = Charity.find(params[:id])
		@charity.update_attributes(charity_params)

		if @charity.update_attributes(charity_params)
			redirect_to charity_path(@charity.id)
		else
			render :new
		end
	end

	def destroy
		@charity = Charity.find(params[:charity_id])
		@charity.destroy

		if @charity.destroy
			redirect_to charities_path
		else
			render :new
		end
	end


private

	def charity_params
		params.require(:charity).permit(:name, :image, :website, :overview, :real, :category_id)
	end


end
