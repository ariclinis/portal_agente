Rails.application.routes.draw do
  get 'agente/index'
  get 'dashboard/index'
  get 'aviso/:id_emb', to: 'desembarkations#new'
  get 'desatracar/:id', to: 'desembarkations#desatracagem'
  root 'dashboard#index'

  resources :desembarkations
  resources :embarkations
  resources :armadors
  resources :delegations
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end