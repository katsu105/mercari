Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  # get '/logout' => 'users#logout'

  resources :users do
    collection do
      get :logout
    end
  end
end
