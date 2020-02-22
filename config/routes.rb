Rails.application.routes.draw do  
  resources :tv_shows, only: :index do
  	get :favourite, on: :member
  end
  
  get :favourites, to: 'users#favourites'

  devise_for :users
end
