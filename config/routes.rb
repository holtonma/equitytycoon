ActionController::Routing::Routes.draw do |map|
  map.resources :users
  # map.resource :session
  # map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  # map.login '/login', :controller => 'sessions', :action => 'new'
  # map.register '/register', :controller => 'users', :action => 'create'
  # map.signup '/signup', :controller => 'users', :action => 'new'
  # map.resources :users

  map.resources :asset_types
  map.resources :assets
  map.resources :actions
  map.resources :transactions
  map.resources :portfolio_items
  map.resources :portfolios
  map.resources :home
  
  #map.connect ':controller/:action', :controller => 'home'
  #map.connect ':controller/:action.:format', :controller => 'home'
  map.root :controller => 'home', :action => 'index'
	
end
