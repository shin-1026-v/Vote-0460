Rails.application.routes.draw do
  root 'top#index'

  get 'users/new'

end
