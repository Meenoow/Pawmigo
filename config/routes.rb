Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  #root "articles#index"
  root "user#index"
  resources :user, only: [:edit, :update, :destroy]
  resources :pets
  resources :schedules
  resources :notes
  resources :photos, only: [:edit, :update]

end
