Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users, path: 'users', path_names: {   sign_in: 'login',
                                                    sign_out: 'logout',
                                                    registration: 'register',
                                                    sign_up: 'new_user' }

  resources :cars
end
