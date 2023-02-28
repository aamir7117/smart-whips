Rails.application.routes.draw do
  root to: "pages#home"
  get '/index', to: "cars#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
