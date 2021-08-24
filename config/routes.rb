Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  /devise_for :admin_users, ActiveAdmin::Devise.config/
  
  resources :articles
  resources :blogs

  root to: "articles#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
