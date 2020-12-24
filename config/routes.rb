Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'tabinabi#index'
  resources :spots, only: [:new, :create, :show, :edit, :create, :update, :destroy]
end
