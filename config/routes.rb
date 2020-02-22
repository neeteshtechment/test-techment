Rails.application.routes.draw do  
  resources :tv_shows, only: :index do
  	get :favourite, on: :member
  end
    
  devise_for :users
end
