Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "employees#index"
  # namespace :admin, path: '/' do
  #   resources :department
  #   resources :employees
  # end
  resources :departments
  resources :employees
end
