Rails.application.routes.draw do

  root to: 'session#new'
  get '/login' => 'session#new'  # login form
  post '/login' => 'session#create'  # form submit, check credentials, create session
  delete '/logout' => 'session#destroy'  # logout (delete session)


  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/users/:id' => 'users#show', as: 'user'
  get '/users/:id/edit' => 'users#edit', as: 'user_edit'
  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy', as: 'user_destroy'
end
