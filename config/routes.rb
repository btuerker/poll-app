Rails.application.routes.draw do
  devise_for :users
  resources :votes
  resources :options
  resources :polls

  root to: "polls#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
