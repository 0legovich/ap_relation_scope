Rails.application.routes.draw do
  get '/users', to: 'users#index'

  get '/authorized_users', to: 'users#authorized_index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
