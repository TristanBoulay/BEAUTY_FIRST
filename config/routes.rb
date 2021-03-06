Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :services, only: %i[index show] do
    resources :bookings, only: %i[new create show]
    resources :reviews, only: %i[new create show]
  end
  get "team", to: "pages#team"

  get "contact", to: "pages#contact"

  resources :bookings, only: :destroy
end




