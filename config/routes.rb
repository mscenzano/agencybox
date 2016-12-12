Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 root 'site#index'

  devise_for :users
  get 'profile', to: 'users#profile'

  resources :clients
  
  resources :projects do
    resources :assets
  end
  resources :assets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
