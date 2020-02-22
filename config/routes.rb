Rails.application.routes.draw do  
  resources :tv_shows, only: :index
  devise_for :users
end
