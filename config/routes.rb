Rails.application.routes.draw do
  resources :candidates
  devise_for :users

  root 'application_controller#index'
end
