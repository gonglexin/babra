Babra::Application.routes.draw do
  root to: 'pages#home'

  get 'info'    => 'pages#info'
  get 'cases'   => 'pages#cases'
  get 'honor'   => 'pages#honor'
  get 'contact' => 'pages#contact'
  get 'message' => 'messages#new'

  resources :products, only: [:index, :show]
  resources :topics, only: [:index, :show]
  resources :messages, only: [:create]

  namespace :admin do
    root to: 'products#index'

    get    'setting' => 'users#edit'
    get    'login'   => 'sessions#new'
    delete 'logout'  => 'sessions#destroy'

    resources :products
    resources :categories
    resources :topics
    resources :messages, only: [:index, :show, :destroy]
    resources :sessions, only: :create
    resources :users, only: :update
  end
end
