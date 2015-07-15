Rails.application.routes.draw do



   post '/login', to: 'auth#login'
   post '/register', to: 'auth#register'
   post '/logout', to: 'auth#logout'

   # post 'twilio/voice' => 'twilio#voice'
   # post 'notifications/notify' => 'notifications#notify'

   # root "users#index"

   # get "users" => "users#index"
   resources :groups, except: [:new, :edit]
   resources :users, except: [:new, :edit]

   resources :visits, except: [:new, :edit]
   get '/visits/:visit_id/notification', to: 'notification#show'
   post '/visits/:visit_id/notification', to: 'notification#create'

   # get '/groups/:group_id/notifications', to: 'notification#find'






 end

