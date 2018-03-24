Rails.application.routes.draw do
  resources :surveys
  resources :candidates
  root 'welcome#index'

  get '/survey', to: 'surveys#new'
end
