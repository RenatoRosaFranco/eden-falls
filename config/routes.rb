# frozen_string_literal: true
Rails.application.routes.draw do
  
  # Dashboard
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  # Authentication
  devise_for :users

  # API
  namespace :api, constraint: { subdomain: 'api' } do
    namespace :v1 do
      # some json response here
    end
    namespace :v2 do
      # some xml response here
    end
  end
end
