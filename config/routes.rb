Rails.application.routes.draw do
  resources :candidates
  root 'welcome#index'
end
