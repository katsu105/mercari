Rails.application.routes.draw do
  devise_for :users
  root 'items#index'

  resources :users do
    collection do
      get :logout
    end
  end

  resources :mypage, only: :index do
    collection do
      get :edit
    end
  end
end
