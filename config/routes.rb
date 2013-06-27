SRG::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :articles
  resources :videos
  resources :search
  resources :bios
  resources :pages

  get "static_pages/home"

  get "static_pages/help"

  root to: 'static_pages#home'

  # consulting links
  match '/consulting', to: 'static_pages#consulting_main'
  match '/consulting/retailers', to: 'pages#show', defaults: { id: 'retailers' }
  match '/consulting/wholesalers', to: 'pages#show', defaults: { id: 'wholesalers' }
  match '/consulting/brands', to: 'pages#show', defaults: { id: 'consumer-brands' }

  # litigation links
  match '/litigation', to: 'static_pages#litigation_main'
  match '/litigation/dispute', to: 'pages#show', defaults: { id: 'dispute-advisory' }
  match '/litigation/antitrust', to: 'pages#show', defaults: { id: 'anti-trust' }
  match '/litigation/expertwitness', to: 'pages#show', defaults: { id: 'expert-witness' }
  match '/litigation/takeoverdefense', to: 'pages#show', defaults: { id: 'takeover-defense' }

  # financial services links
  match '/acquisitions-ftc', to: 'static_pages#finance_main'
  match '/acquisitions-ftc/duedilligence', to: 'pages#show', defaults: { id: 'due-dilligence' }
  match '/acquisitions-ftc/ma', to: 'pages#show', defaults: { id: 'mergers-acquisitions' }
  match '/acquisitions-ftc/ftc', to: 'pages#show', defaults: { id: 'ftc' }

  # marketing and advertising links
  match '/marketing', to: 'static_pages#marketingadvertising_main'
  match '/marketing/adservices', to: 'pages#show', defaults: { id: 'advertising-services' }
  match '/marketing/digitalmarketing', to: 'pages#show', defaults: { id: 'digital-marketing' }
  match '/marketing/brandbuilding', to: 'pages#show', defaults: { id: 'brand-building' }

  # other page links 
  # match '/bios', to: 'static_pages#bios'
  match '/press', to: 'static_pages#press_main'

  # user routes
  match '/signup', to: 'users#new'
  match '/new', to: 'users#new'
  match 'admin', to: 'sessions#new'
  match 'signout', to: 'sessions#destroy', via: :delete

  # articles routes
  match '/articles2', to: 'static_pages#articles2'

  # get '/test', to: 'pages#show', defaults: { id: 'stuff' }

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
