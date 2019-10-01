Rails.application.routes.draw do
  devise_for :users
  root 'places#index'
  resources :places do 
    resources :places 
      resources :comments, only: :create 
      resources :photos, only: :create
    end 
    resources :user, only: :show 
end
