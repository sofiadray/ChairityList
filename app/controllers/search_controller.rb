class SearchController < ApplicationController

  def search
    @search = Charity.search do
      fulltext params[:search]
    end
    @charities = @search.results
  end

end