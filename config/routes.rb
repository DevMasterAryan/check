Rails.application.routes.draw do
  get '/dinga', to: redirect("/sessions/new")

  #get 'users/new'
  resources :users
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
