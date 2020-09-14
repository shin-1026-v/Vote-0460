Rails.application.routes.draw do
  root 'top#index'
  resources :users
  resources :news_topics

  get    '/signup',         to: 'users#new'
  get    '/login',          to: 'sessions#new'
  post   '/login',          to: 'sessions#create'
  delete '/logout',         to: 'sessions#destroy'
  post   'answer_sets/:news_topic_id/create_agree',  to: 'answer_sets#create_agree', as: :answer_sets_create_agree
  post   'answer_sets/:news_topic_id/create_non_agree',  to: 'answer_sets#create_non_agree', as: :answer_sets_create_non_agree

end
