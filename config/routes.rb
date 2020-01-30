Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations' }
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :tweets
  resources :relationships

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "tweets#index"
end
