Rails.application.routes.draw do
  resources :bird_watchers
  resources :birds, only: [:index, :show, :create]
end
