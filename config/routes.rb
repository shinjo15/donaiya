Rails.application.routes.draw do
  devise_for :admins
  root to: 'homes#top'
  get 'homes/admin_top'
  get 'carts/new'
  resources :notices, only: [:new, :create, :edit, :show, :update, :destroy]
  get 'orders/confirm'
  get 'orders/complete'
  resources :orders, only: [:new, :create, :show, :update]
  delete 'cart_items/destroy_all'
  resources :cart_items, only: [:index, :create, :update, :destroy]
  resources :takeout_items
  resources :recommendations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
