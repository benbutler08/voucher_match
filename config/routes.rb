Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  mount Rapidfire::Engine => "/rapidfire"
  root 'welcome#index'
end
