Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"

  resources :assignments
  resources :cohorts
  resources :comments
  resources :subissions

end
