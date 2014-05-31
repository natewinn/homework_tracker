Rails.application.routes.draw do
  devise_for :users

  root to: "users#index"

  resources :assignments
  resources :cohorts
  resources :comments
  resources :locations
  resources :subissions
  resources :users

end
