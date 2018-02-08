Rails.application.routes.draw do

  root 'static_pages#home'

  get 'creations/new'

  resources :users
  resources :events

  get 'static_pages/home'
  get '/contact', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about'

 #get 'sessions/new'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end

#           Prefix Verb   URI Pattern                  Controller#Action
#            root GET    /                            static_pages#home
#    creations_new GET    /creations/new(.:format)     creations#new
#            users GET    /users(.:format)             users#index
#                  POST   /users(.:format)             users#create
#         new_user GET    /users/new(.:format)         users#new
#        edit_user GET    /users/:id/edit(.:format)    users#edit
#             user GET    /users/:id(.:format)         users#show
#                  PATCH  /users/:id(.:format)         users#update
#                  PUT    /users/:id(.:format)         users#update
#                  DELETE /users/:id(.:format)         users#destroy
#           events GET    /events(.:format)            events#index
#                  POST   /events(.:format)            events#create
#        new_event GET    /events/new(.:format)        events#new
#       edit_event GET    /events/:id/edit(.:format)   events#edit
#            event GET    /events/:id(.:format)        events#show
#                  PATCH  /events/:id(.:format)        events#update
#                  PUT    /events/:id(.:format)        events#update
#                  DELETE /events/:id(.:format)        events#destroy
#static_pages_home GET    /static_pages/home(.:format) static_pages#home
#          contact GET    /contact(.:format)           static_pages#contact
#            about GET    /about(.:format)             static_pages#about
#           signup GET    /signup(.:format)            users#new
#            login GET    /login(.:format)             sessions#new
#                  POST   /login(.:format)             sessions#create
#           logout DELETE /logout(.:format)            sessions#destroy
