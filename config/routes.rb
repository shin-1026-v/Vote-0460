Rails.application.routes.draw do
  root 'top#index'
  resources :users

  get '/signup', to: 'users#new'

end
