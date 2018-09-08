Rails.application.routes.draw do
  get 'stories/index'
  get 'stories/new'
  post 'stories/create'
  root 'home#index'
end
