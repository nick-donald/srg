SRG::Application.routes.draw do

  get "static_pages/home"

  get "static_pages/help"

  root to: 'static_pages#home'

  # consulting links
  match '/consulting', to: 'static_pages#consulting_main'
  match '/consulting/supermarkets', to: 'static_pages#consulting_supermarket'
  match '/consulting/wholesalers', to: 'static_pages#consulting_wholesale'
  match '/consulting/manufacturers', to: 'static_pages#consulting_manufacture'

  # litigation links
  match '/litigation', to: 'static_pages#litigation_main'
  match '/litigation/dispute', to: 'static_pages#litigation_dispute'
  match '/litigation/antitrust', to: 'static_pages#litigation_antitrust'
  match '/litigation/expertwitness', to: 'static_pages#litigation_expertwitness'

  # financial services links
  match '/financialservices', to: 'static_pages#finance_main'
  match '/financialservices/duedilligence', to: 'static_pages#finance_duedilligence'
  match '/financialservices/ma', to: 'static_pages#finance_ma'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
