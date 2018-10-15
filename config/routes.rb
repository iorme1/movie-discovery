Rails.application.routes.draw do
  resources :tvshows, only: [:index, :show]
  root 'tvshows#index'
end
