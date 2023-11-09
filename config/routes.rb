Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#top'
  
  resources :users, only: %i[new create]
end
