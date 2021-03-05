Rails.application.routes.draw do
  post 'random/create'
  get '/cocktails/search', to: 'cocktails#search', as: :search
  root 'cocktails#index'
  resources :cocktails, only: [:show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy]
  end
end
