Tracker::Application.routes.draw do
  devise_for :users,
    skip: [:sessions],
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_scope :user do
    get '/users/auth/:provider', to: 'users/omniauth_callbacks#passthru'
    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  end

  root to: 'home#index'
end
