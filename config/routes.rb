Rails.application.routes.draw do
  resources :orders
  resources :three_dimensions, path: "three" do
    collection do
      get :my_models
      get :my_favorites
    end
  end
  # devise_for :users
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations',
    unlocks: 'users/unlocks'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "price", to: "home#price"
  get "login", to: "home#login"
  root "home#index"
end
