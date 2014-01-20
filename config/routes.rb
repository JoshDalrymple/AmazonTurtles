AmazonTurtles::Application.routes.draw do
	root  'static_pages#home'
	resources :users
  	resources :sessions, only: [:new, :create, :destroy]
	get "catalog/show"
  	get "static_pages/home"
  	match '/catalog', to: 'catalog#show', via:'get'
  	match '/user_turtles', :to => 'catalog#new', :as => :user_turtles, via: [:get, :post]
  	match '/signup',  to: 'users#new',            via: 'get'
  	match '/signin',  to: 'sessions#new',         via: 'get'
  	match '/signout', to: 'sessions#destroy',     via: 'delete'
  
end
