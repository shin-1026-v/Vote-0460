Rails.application.routes.draw do
  root 'top#index'
  resources :users
  resources :news_topics

  get    '/signup',         to: 'users#new'
  get    '/login',          to: 'sessions#new'
  post   '/login',          to: 'sessions#create'
  delete '/logout',         to: 'sessions#destroy'
end
