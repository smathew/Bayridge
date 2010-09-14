ActionController::Routing::Routes.draw do |map|
  map.resources :loanapps
  map.resources :memberapps
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.connect '/', :controller => 'home', :action => 'index'
  map.root :controller => 'home'
  map.directions '/directions', :controller => 'home', :action => 'directions'
  map.ehl '/ehl', :controller => 'home', :action => 'ehl'
  map.aboutus '/aboutus', :controller => 'home', :action => 'aboutus'
  map.faq '/faq', :controller => 'home', :action => 'faq'
  map.hbloginv3_2 '/hbloginv3_2', :controller => 'home', :action => 'hbloginv3_2'
  map.prodnserv '/prodnserv', :controller => 'home', :action => 'prodnserv'
  map.rates_loan '/rates_loan', :controller => 'rates', :action => 'rates_loan'
  map.rates_savings '/rates_savings', :controller => 'rates', :action => 'rates_savings'
  map.howtojoin '/howtojoin', :controller => 'applications', :action => 'howtojoin'
  map.calcs  '/calcs', :controller => 'calculators', :action => 'calcs'
  map.autocalc  '/autocalc', :controller => 'calculators', :action => 'autocalc'
  map.autocalcr  '/autocalcr', :controller => 'calculators', :action => 'autocalcr'
  map.fixedmortgage  '/fixedmortgage', :controller => 'calculators', :action => 'fixedmortgage'
  map.fixedmortgager  '/fixedmortgager', :controller => 'calculators', :action => 'fixedmortgager'
  map.ccbalance_calc  '/ccbalance_calc', :controller => 'calculators', :action => 'ccbalance_calc'
  map.rebateloan_calc  '/rebateloan_calc', :controller => 'calculators', :action => 'rebateloan_calc'
end
