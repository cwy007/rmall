Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :products
  end
  resources :products, only: [:index, :show] do
    member do
      post :add_to_cart
    end
  end
  resources :carts, only: [:index] do
    collection do
      delete :empty
    end
  end
  root to: 'products#index'
end

# == Route Map
#
#                   Prefix Verb   URI Pattern                         Controller#Action
#         new_user_session GET    /users/sign_in(.:format)            devise/sessions#new
#             user_session POST   /users/sign_in(.:format)            devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)           devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)       devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)      devise/passwords#edit
#            user_password PATCH  /users/password(.:format)           devise/passwords#update
#                          PUT    /users/password(.:format)           devise/passwords#update
#                          POST   /users/password(.:format)           devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)             devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)            devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)               devise/registrations#edit
#        user_registration PATCH  /users(.:format)                    devise/registrations#update
#                          PUT    /users(.:format)                    devise/registrations#update
#                          DELETE /users(.:format)                    devise/registrations#destroy
#                          POST   /users(.:format)                    devise/registrations#create
#           admin_products GET    /admin/products(.:format)           admin/products#index
#                          POST   /admin/products(.:format)           admin/products#create
#        new_admin_product GET    /admin/products/new(.:format)       admin/products#new
#       edit_admin_product GET    /admin/products/:id/edit(.:format)  admin/products#edit
#            admin_product GET    /admin/products/:id(.:format)       admin/products#show
#                          PATCH  /admin/products/:id(.:format)       admin/products#update
#                          PUT    /admin/products/:id(.:format)       admin/products#update
#                          DELETE /admin/products/:id(.:format)       admin/products#destroy
#      add_to_cart_product POST   /products/:id/add_to_cart(.:format) products#add_to_cart
#                 products GET    /products(.:format)                 products#index
#                  product GET    /products/:id(.:format)             products#show
#                     root GET    /                                   products#index
#
