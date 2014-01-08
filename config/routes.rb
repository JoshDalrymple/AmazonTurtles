AmazonTurtles::Application.routes.draw do
	resources :users
	root  'static_pages#home'
  	get "static_pages/home"
  	get "turtles/new"
  
end
