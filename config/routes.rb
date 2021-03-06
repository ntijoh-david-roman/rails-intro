# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  resources :locks
  post '/locks/:id/unlock', to: 'locks#unlock', as: 'unlock'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
