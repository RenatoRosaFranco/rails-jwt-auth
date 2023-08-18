# frozen_string_literal: true

Rails.application.routes.draw do
  
  post '/auth/login', to: 'authenticate#login'
  get  '/*a', to: 'application#not_found'
end
