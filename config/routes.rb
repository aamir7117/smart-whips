Rails.application.routes.draw do
  root to: "pages#home"
  get '/cars', to: "cars#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "users", to: "pages#show"

  devise_for :users, path: 'users', path_names: {   sign_in: 'login',
                                                    sign_out: 'logout',
                                                    registration: 'register',
                                                    sign_up: 'new_user' }

  resources :cars do
    resources :bookings, only: %i[new create]
  end

  resources :users, only: :new do
    resources :bookings, only: %i[index show]
  end

  resources :bookings, only: :show
end
