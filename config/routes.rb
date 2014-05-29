Rails.application.routes.draw do
  devise_for :users

  root to: "users#index"

  resources :users
  resources :assignments
  resources :cohorts
  resources :comments
  resources :subissions

end
