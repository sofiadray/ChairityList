Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'
  get '/about' => 'static#about'
  get '/faq' => 'static#faq'
  get '/contact' => 'static#contact'

  get "/cities" => 'city#index'

  resources :cities

  resources :charities do
  	resources :posts
  end

end
