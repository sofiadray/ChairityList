Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'

  get "/cities" => 'city#index'

  recourses :cities 
  
  resources :charities do
  	resources :posts
  end

end
