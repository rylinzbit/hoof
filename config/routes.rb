Rails.application.routes.draw do

  get 'sessions/new'
  post 'sessions/create' => 'sessions#create'
  get 'sessions/destroy' => 'sessions#destroy'

  # devise_for :users controllers: { registration: "registrations" }

  root 'landing#index'
  get 'landing/index' => "landing#index"

  # get 'homepages/index' => 'homepages#index'
  #about page route
  get 'about' => 'landing#about'
  get 'homepages/:id' => 'homepages#index'
  get 'organizations/earthjustice' => 'organizations#earth_justice'
  get 'organizations/sgtpeppersfriends' => 'organizations#sgt_peppers_friends'
  get 'users/new' => 'users#new'
  get 'users/test' => 'users#test'
  post 'users' => 'users#create'
  get 'nutrition' => 'nutrition#index'
  get 'nutrition/vegan' => 'nutrition#vegan'
  get 'nutrition/gluten-free-dairy-free' => 'nutrition#gfdf'
  get 'nutrition/vegetarian' => 'nutrition#vegetarian'
  get 'nutrition/paleo' => 'nutrition#paleo'

  resources :subscribers


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
