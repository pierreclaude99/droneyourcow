Rails.application.routes.draw do
  devise_for :users
  root to: 'drones#index'
  get "profile/:id", to: "pages#profile", as: :profile
  get "profile/:id/edit", to: "pages#profile_edit", as: :profile_edit
  #put "profile/:id/edit", to: "pages#profile_update", as: :profile_update

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :drones  do
    resources :deliveries, only: [:create] do
      resources :reviews, only: [:new, :create]
    end

 end
  resources :deliveries, only: [:index]
  resources :deliveries, only: [:update]
  resources :users, only: [:update, :edit]
end
