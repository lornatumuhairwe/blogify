Rails.application.routes.draw do
  root 'home#index'

  resources :stories, except: [:update, :edit, :destroy] do
    resources :comments
  end
end
