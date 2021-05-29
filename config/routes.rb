Rails.application.routes.draw do
  get 'dashboard/index'
  resources :desembarkations
  resources :embarkations
  resources :armadors
  resources :delegations
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
