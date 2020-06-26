Rails.application.routes.draw do
  resources :top
  
  root "top#index"

end
