# require 'api_constraints'

# Rails.application.routes.draw do
#   # API definition
#   namespace :api, defaults: { format: :json },
#                               constraints: { subdomain: 'api'}, path: '/' do
#     scope module: :v1,
#       constraints: ApiConstraints.new(version: 1, default: true) do
#       # We are going to list our resources here
#     end
#   end
# end

Rails.application.routes.draw do

  # root 'cosmetic_products#index'
   # get '/cosmetic_products' => 'cosmetic_products#index'

   # get '/users' => 'users#index'

   # post '/login' => 'auth#login'
   # post '/register' => 'auth#register'
   # delete '/logout' => 'auth#logout'


   resources :users, except: [:new, :edit] do

   end

   resources :visits, except: [:new, :edit] do

   end


   resources :memberships, except: [:new, :edit] do

   end


   resources :groups, except: [:new, :edit] do

   end



 end

