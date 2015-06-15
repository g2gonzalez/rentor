Rails.application.routes.draw do
	root 'sessions#index'

  	get  	'/home'     		=> 		'home#index'

  	get  	'/landlord' 		=> 		'landlords#index'
  	get  	'/renter'   		=> 		'renters#index'

  	get  	'/login'    		=> 		'sessions#new'
  	post 	'/login'    		=> 		'sessions#create'
  	get  	'/logout'   		=>		 'sessions#destroy'

  	get  	'/signup'   		=> 		'users#new'
  	post 	'/users'    		=> 		'users#create'
end
