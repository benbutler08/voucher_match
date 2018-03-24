Rails.application.routes.draw do
  devise_for :users


  resources :surveys
  resources :candidates
  root 'welcome#index'

  get '/survey', to: 'surveys#new'
end
