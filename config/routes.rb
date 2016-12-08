Rails.application.routes.draw do
  get '/' 'site#index'

  devise_for :users
  get 'profile', to: 'users#profile'

  resources :projects do
    resources :assets
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
