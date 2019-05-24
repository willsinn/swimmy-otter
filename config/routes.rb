Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :scores, only: [:index, :create, :destroy]
      resources :users, only: [:index, :create, :destroy]
    end
  end
end
