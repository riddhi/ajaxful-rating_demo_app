ActionController::Routing::Routes.draw do |map|
  map.resources :users
  map.resources :cars, :member => {:rate => :post}
  map.resources :user_sessions
  map.login 'login', :controller => "user_sessions", :action => "new"
  map.logout 'logout', :controller => "user_sessions", :action => "destroy"
  
  map.root :cars
end
