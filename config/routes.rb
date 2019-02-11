Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/instances/edit' => 'instances#edit'
  post '/instances/edit' => 'instances#update_multiple_instances', :as => 'update'

  resources :games
  resources :users
  resources :decks
  #resources :instances

  get '/admin' => 'admin#index'

end
