Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :landings
    resources :leads
    resources :promo_bars

    root to: "users#index"
  end

  resources :leads
  get 'leads/:id' => "leads#show", path: 'early-access/:id', as: 'early-access'
  resources :promo_bars
  devise_for :users
  root 'home#index'
  resources :landings do
    resources :leads
  end
end
