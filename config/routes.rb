Rails.application.routes.draw do
  resources :user_books
  resources :books
  resources :users
  post "/login", to: "auth#login"
  post "/signup", to: "users#create"
  get "/profile", to: "users#profile"
  post "/findcreate", to: "books#findcreate"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 