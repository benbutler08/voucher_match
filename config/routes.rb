Rails.application.routes.draw do
  devise_for :users
  resources :candidates
  root 'welcome#index'
end
