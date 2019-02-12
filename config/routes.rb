Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'admin#index'

  get '/instances/:id/edit' => 'instances#edit', :as => 'edit'
  post '/instances/:id/edit' => 'instances#update', :as => 'update'
  get '/responses/:id/edit' => 'responses#edit', :as => 'edit_response'
  post '/responses/:id/edit' => 'responses#update', :as => 'update_response'

  resources :games
  resources :users
  resources :decks
  resources :rounds
  resources :burns
  #resources :instances

  get '/admin' => 'admin#index'

end
