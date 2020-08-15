Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, except: :index

      resources :tokens, only: :create

      resources :products
    end
  end
end
