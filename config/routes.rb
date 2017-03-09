Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  resources :pics do
    member do
      put 'like', to: 'pics#upvote'
    end
  end
  root to: 'pics#index'
||||||| merged common ancestors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> feature/new_gems
end

