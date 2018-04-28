Rails.application.routes.draw do
  resources :books
  get 'home/index'
  devise_for :users
  root to: "home#index"
end
