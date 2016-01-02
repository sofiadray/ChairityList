class CategoriesController < ApplicationController

	def show
		@category = Category.find(params[:id])
		@charities = Charity.where(category_id: @category.id)
	end

end
