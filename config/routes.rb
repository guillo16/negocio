Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  post 'procesar-pago', to: "payments#create"
  resources :line_items
  resources :carts
  resources :cars do
    resources :reviews, only: [:create]
  end
  resources :orders, only: [:index, :show, :create, :total] do
    resources :payments, only: [:new, :create]
  end

  resources :cars do
    resources :variants, only: [:new, :create]
  end
  resources :variants, only: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
