
Rails.application.routes.draw do
  root 'welcome#index'

  get '/landlord' => 'landlords#index'
  get '/renter'   => 'renters#index'

  get  '/login'   => 'sessions#new'
  post '/login'   => 'sessions#create'
  get  '/logout'  => 'sessions#destroy'

  get  '/signup'  => 'users#new'
  post '/users'   => 'users#create'
end
