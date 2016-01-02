class HomeController < ApplicationController

  def index
    @category = Category.all

    ##redirects to user's city page based on ip
    # request = request.remote.ip
    # city = @request.location.city
    # redirect_to city_path(@city.id)
  end

end
