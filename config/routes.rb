Rails.application.routes.draw do
   get '/categoria', to: 'categoria#index'
   get '/categoria/new', to: 'categoria#new'
   post '/categoria', to: 'categoria#create'
   get '/categoria/:id', to: 'categoria#show', as: 'categorium'
   get '/categoria/:id/edit', to: 'categoria#edit', as: 'edit_categoria'
   patch '/categoria/:id', to: 'categoria#update'
   put '/categoria/:id', to: 'categoria#update'
   delete '/categoria/:id', to: 'categoria#delete'

  #resources :categoria
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
