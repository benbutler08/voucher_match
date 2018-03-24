Rails.application.routes.draw do
  resources :surveys
  resources :candidates
  root 'welcome#index'
end
