Rails.application.routes.draw do
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/sign_up' => 'users#new'
  post '/sign_up' => 'users#create'

  root 'pages#index'
  get '/about' => 'pages#about'

  get '/change_password' => 'users#pass'
  post '/change_password' => 'users#password'

  get '/show_all_cars' => 'cars#showall'
  get '/show_all_garages' => 'garages#showall'

  get '/show_my_cars' => 'cars#showmy'
  get '/show_my_garages' => 'garages#showmy'

  get '/show_garage' => 'cars#showgarage'

  get '/move' => 'garages#move'
  post '/move' => 'garages#movein'

  get '/moveout' => 'garages#moveo'
  post '/moveout' => 'garages#moveout'

  resources :garages
  resources :cars
  resources :users
end
