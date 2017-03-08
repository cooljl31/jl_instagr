Rails.application.routes.draw do
  devise_for :users
  resources :pics
  root to: 'pics#index'
end

