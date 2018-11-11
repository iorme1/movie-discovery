Rails.application.routes.draw do
  devise_for :users
  resources :tvshows, only: [:index, :show]
  root 'tvshows#index'
end
