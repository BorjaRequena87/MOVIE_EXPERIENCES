Rails.application.routes.draw do
  devise_for :users
  root to: 'experiences#index'
  resources :users, only: :show
  resources :experiences do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

