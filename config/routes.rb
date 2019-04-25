# frozen_string_literal: true
Rails.application.routes.draw do
  # Dashboard
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Authentication
  devise_for :users
  # API
  namespace :api, constraint: { subdomain: 'api' } do
    # JSON
    namespace :v1 do
      resources :albums
    end
    # XML
    namespace :v2 do
      resources :albums
    end
  end
end
