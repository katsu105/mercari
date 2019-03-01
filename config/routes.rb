Rails.application.routes.draw do
  devise_for :users
  root 'items#index'

  resources :items, only: [:new, :create]

  resources :users do
    collection do
      get :logout
    end
  end

  resources :mypage, only: [:index, :edit] do
    collection do
      get :profile
    end
  end
end
