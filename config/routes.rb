ActionController::Routing::Routes.draw do |map|
  map.resources :users
  map.resources :home
  map.root :controller => 'home', :action => 'index'
  
  map.connect ':controller/:action', :controller => 'home'
  map.connect ':controller/:action.:format', :controller => 'home'
  
end
