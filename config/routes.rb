Rails.application.routes.draw do
  get 'admin/index'

	get 'sessions/new'
	get 'sessions/create'
	get 'sessions/destroy'
	get 'admin/index'


	get 'shopper', to: 'shopper#index'

	get 'signup', to: 'users#new'
	post 'users', to: 'users#create'
	get 'users', to: 'users#index'

	get 'login' => 'sessions#new', as: :login
	post 'login' => 'sessions#create'
	get 'logout' => 'sessions#destroy', as: :logout

	root 'shopper#index', as: 'root'

	resources :users
	resources :orders
	resources :lineitems
	resources :carts
	resources :products
end