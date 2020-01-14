Rails.application.routes.draw do


  root to: 'pages#index'

  get '/login' => 'session#new'  # login form
  post '/login' => 'session#create'  # form submit, check credentials, create session
  delete '/logout' => 'session#destroy'  # logout (delete session)


  get '/users/new' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show', as: 'user'
  get '/users/:id/edit' => 'users#edit', as: 'edit_user'
  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy'

  get '/categories' => 'categories#index'
  get '/categories/:id' => 'categories#show', as: 'category'

  get '/filters' => 'filters#index'

  resources :events


end
