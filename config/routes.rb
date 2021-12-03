require 'sidekiq/web'

Rails.application.routes.draw do
  # resources :meetings
  #   authenticate :user, lambda { |u| u.admin? } do
  #     mount Sidekiq::Web => '/sidekiq'
  #   end
  resources :meetings do
    resources :comments
  end

  devise_for :users
  root to: 'home#index'
end
