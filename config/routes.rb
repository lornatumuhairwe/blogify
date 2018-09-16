Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :stories, except: [:destroy] do
    resources :comments
  end

  resources :comments do
    resources :comments
  end
end
