Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :events do
    resources :entrada, only: [:new, :create] do
      resources :transaccion, only: [:new, :create]
    end
  end
  resources :entrada, only: [:show, :index, :edit, :update, :destroy ]
  resources :transaccion, only: [:show, :index]
  resources :user, only: [:index, :show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
