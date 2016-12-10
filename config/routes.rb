Rails.application.routes.draw do
 root 'site#index'

  devise_for :users
  get 'profile', to: 'users#profile'

  resources :clients
  
  resources :projects
  resources :assets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
