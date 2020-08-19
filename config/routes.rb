Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/profile', to: 'pages#profile', as: :profile
  patch '/rentals/:id/accept', to: "rentals#accepted", as: :accepted
  patch '/rentals/:id/decline', to: "rentals#declined", as: :declined

  resources :powers, except:[:update, :edit] do
      resources :rentals, only:[:new, :create]
  end
  resources :rentals, only:[:update, :index]
end
