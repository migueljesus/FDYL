Rails.application.routes.draw do
   get '/categoria', to: 'categoria#index'
   get '/categoria/new', to: 'categoria#new'
   post '/categoria', to: 'categoria#create'

  #resources :categoria
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
