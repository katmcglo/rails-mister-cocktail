Rails.application.routes.draw do
  get 'doses/create'
  get 'doses/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  resources :cocktails, only: [ :new, :create, :index, :show ] do
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, only: [ :destroy]
end
