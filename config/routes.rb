Rails.application.routes.draw do
  get 'messages/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'tabinabi#index'
  resources :spots, only: [:new, :create, :show, :edit, :update, :destroy] do
    collection do
      get 'search'
    end
    resources :messages, only: [:create]
  end

  resources :tags do
    get 'spots', to: 'spots#search_tag'
  end

  resources :users, only: :show
  resources :hokaidoutouhoku, only: :index
  resources :kantou, only: :index
  resources :hokuriku, only: :index
  resources :toukai, only: :index
  resources :kinki, only: :index
  resources :chuugoku, only: :index
end
