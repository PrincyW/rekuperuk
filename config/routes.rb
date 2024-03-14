Rails.application.routes.draw do
  devise_for :users
  root to: "pages#splash"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about_us'
  get '/faq', to: 'pages#faq'
  get '/filters', to: 'pages#filters'

  resources :donations, only: [:new, :create] do
      member do
        get  :confirmation
      end
    end
  resources :wigs, only: [:index, :show] do
    resources :acquisitions, only: [:new, :create, :edit, :update]
    member do
      get  :recap
    end
  end

  resources :acquisitions, only: [] do
    member do
      get  :confirmation
    end
  end
end
