ActionController::Routing::Routes.draw do |map|
  map.resources :asset_types
  map.resources :assets
  map.resources :actions
  map.resources :transactions
  map.resources :portfolio_items
  map.resources :portfolios
  map.resources :users
  map.resources :home
  map.root :controller => 'home', :action => 'index'
  
  map.connect ':controller/:action', :controller => 'home'
  map.connect ':controller/:action.:format', :controller => 'home'
  
end
