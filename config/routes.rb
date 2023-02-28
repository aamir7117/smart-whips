Rails.application.routes.draw do
  get 'bookings/show'
  root to: "pages#home"
  get '/cars', to: "cars#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users, path: 'users', path_names: {   sign_in: 'login',
                                                    sign_out: 'logout',
                                                    registration: 'register',
                                                    sign_up: 'new_user' }

  resources :cars do
    resources :bookings, only: %i[new create show index]
  end
end
