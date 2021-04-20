Rails.application.routes.draw do
  get 'graphic/index'
  resources :bookmarks
  resources :kinds
  resources :categories
  root 'bookmarks#index'
  get 'categories/:id/api_v1', to: 'categories#api', as: 'api'
end
