Rails.application.routes.draw do
  devise_for :admins
  root to: 'homes#top'
  get 'homes/admin_top'
  resources :notices, only: [:new, :create, :edit, :show, :update, :destroy]
  post 'orders/confirm'
  get 'orders/complete'
  resources :orders, only: [:new, :create, :show, :update]
  delete 'cart_items/destroy_all'
  resources :takeout_items do
     resources :cart_items, only: [:index, :create, :update, :destroy]
  end
  resources :recommendations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
