Rails.application.routes.draw do

  root to: "home#index"

  devise_for :users

  resources :books

  get 'home/index'
end
