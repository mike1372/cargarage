Rails.application.routes.draw do
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/sign_up' => 'users#new'
  post '/sign_up' => 'users#create'

  root 'pages#index'
  get '/about' => 'pages#about'
  get '/show_all_cars' => 'cars#showall'
  get '/show_all_garages' => 'garages#showall'
  get '/show_my_cars' => 'cars#showmy'
  get '/show_my_garages' => 'garages#showmy'

  resources :garages
  resources :cars
  resources :users
end