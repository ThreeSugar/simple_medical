Rails.application.routes.draw do
  

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  get '/temp', to: 'sessions#temp'

  resources :patients

  get '/index', to: 'patients#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
