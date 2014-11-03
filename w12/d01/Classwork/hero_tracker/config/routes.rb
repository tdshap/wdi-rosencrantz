Rails.application.routes.draw do

  root 'superheros#index'

  resources :superheros

#           Prefix Verb   URI Pattern                    Controller#Action
#           root GET    /                              superheros#index
#     superheros GET    /superheros(.:format)          superheros#index
#                POST   /superheros(.:format)          superheros#create
#  new_superhero GET    /superheros/new(.:format)      superheros#new
# edit_superhero GET    /superheros/:id/edit(.:format) superheros#edit
#      superhero GET    /superheros/:id(.:format)      superheros#show
#                PATCH  /superheros/:id(.:format)      superheros#update
#                PUT    /superheros/:id(.:format)      superheros#update
#                DELETE /superheros/:id(.:format)      superheros#destroy

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
