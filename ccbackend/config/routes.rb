Rails.application.routes.draw do
  resources :posts
    resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      patch '/updateprofile', to: 'users#current_user_edit'
end
