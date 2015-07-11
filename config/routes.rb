Rails.application.routes.draw do


   # root "users#index"

   get "users" => "users#index"
   # resources :users, except: [:new, :edit] do

   # end

   # resources :visits, except: [:new, :edit] do

   # end


   # resources :memberships, except: [:new, :edit] do

   # end


   # resources :groups, except: [:new, :edit] do

   # end



 end

