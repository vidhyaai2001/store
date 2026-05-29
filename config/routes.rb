Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  #get products data 
  # get "/products", to: "products#index"
  # #add/create new product 
  #  post "/products", to: "products#create"
  #  #get specific product record 
  #  get "/products/:id", to: "products#show"
    
  #  # edit form open krna specific obj ke liye 
  #   get "/products/:id/edit", to: "products#edit"
  #   # object parsial update
  # patch "/products/:id", to: "products#update"
  # #full object update 
  # put "/products/:id", to: "products#update"

  # #delete any specific object 
  # delete "/products/:id", to: "products#destroy"
    
  root "products#index"
   resources :products
end
