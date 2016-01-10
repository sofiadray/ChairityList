Rails.application.routes.draw do

  devise_for :users

  root to: 'home#index'
  get '/about' => 'static#about'
  get '/faq' => 'static#faq'
  get '/contact' => 'static#contact'

  resources :cities

  resources :categories
  
  resources :charities do
  	resources :posts
  end

end
