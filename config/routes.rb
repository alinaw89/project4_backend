Rails.application.routes.draw do



   post '/login', to: 'auth#login'
   post '/register', to: 'auth#register'
   post '/logout', to: 'auth#logout'

   post 'twilio/voice' => 'twilio#voice'
   post 'notifications/notify' => 'notifications#notify'

   # root "users#index"

   # get "users" => "users#index"
   resources :users, except: [:new, :edit] do

   end

   resources :visits, except: [:new, :edit] do

   end



   resources :memberships, except: [:new, :edit] do

   end


   resources :groups, except: [:new, :edit] do

   end





 end

