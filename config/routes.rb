# frozen_string_literal: true

Rails.application.routes.draw do
  post 'auth/login',  to: 'authentication#login'
  
  resources :users, only: [:index, :show, :create, :update, :destroy]
end
