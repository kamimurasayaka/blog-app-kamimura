Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'articles#index'
  resource :timeline, only: [:show]

  resources :articles do
    resources :comments, only: [:new, :create]

    resource :like, only: [:show, :create, :destroy]
  end

  resource :profile, only: [:show, :edit, :update]
  resources :favorites, only: [:index]
end
