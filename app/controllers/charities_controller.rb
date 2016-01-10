class CharitiesController < ApplicationController
	def index
		  if params[:search]
		    @charities = Charity.search(params[:search]).order("created_at DESC")
		  else
		    @charities = Charity.all.order('created_at DESC')
		  end
	end

	def show
		@user = User.find(current_user.id)
		@charity = @user.charities.find(params[:id])
	end

	def new
		@charity = Charity.new
	end

	def create
		@charity = Charity.new(charity_params)

		if @charity.save
			flash[:message] = "Here is your charity's page!"
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
