Rails.application.routes.draw do
  get '/login', to:'sessions#new'
  post '/login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'

  resources :surveys
  resources :candidates
  resources :sessions, only: [:create, :new, :destroy]
  root 'welcome#index'

  get '/survey', to: 'surveys#new'
end
