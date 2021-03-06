LGBTHomelessness::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
  get 'about' => "home#about"
  get 'who_are_you' => "home#who"
  get 'volunteer' => "home#volunteer"
  get 'contact' => "home#contact"
  get 'calendar' => "home#calendar"
  get 'results' => "home#result"
  post 'contact' => "contact#create"
  post 'volunteer' => 'volunteer#create'
  get 'volunteers' => "volunteer#index"
  get 'org_list' => "home#org_list"
  get 'wish_lists' => "home#wish_lists"
  get 'donate_money' => "home#donate_money"
  get 'give_help' => "home#give_help"

  post 'sms_request' => "sms#received"
  get  'sms_test'    => "sms#test"

  resources :organizations do
      resources :programs
  end

  resources :programs

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
