Tracker::Application.routes.draw do
  devise_for :users,
    only: :omniauth_callbacks,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_scope :user do
    get '/users/auth/:provider', to: 'users/omniauth_callbacks#passthru'
    delete 'logout', to: 'users/sessions#destroy', as: :destroy_user_session
    get 'login', to: 'users/sessions#new', as: :new_user_session
  end

  resources :tracks, only: [ :new, :create, :show ] do
    resources :measurements, only: [ :create ]
    resources :workouts,     only: [ :create ]
  end

  authenticated do
    root to: 'application#route'
  end

  root to: 'home#index'
end
