# frozen_string_literal: true

Rails.application.routes.draw do
  
  post '/auth/login', to: 'authentication#login'
  #get  '/*a', to: 'application#not_found'

  resources :users, only: [:index, :show, :create, :update, :destroy]
end
