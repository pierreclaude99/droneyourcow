Rails.application.routes.draw do
  devise_for :users
  root to: 'drones#index'
  get "profile/:id", to: "pages#profile", as: :profile
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :drones  do
    resources :deliveries, only: [:create] do
      resources :reviews, only: [:new, :create]
    end

 end
  resources :deliveries, only: [:index]
end
