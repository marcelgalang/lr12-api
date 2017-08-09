Rails.application.routes.draw do
  resources :profiles
  namespace :api do
    namespace :v1 do
      resources :lefts, except: [:new, :edit]
      resources :users, except: [:new, :edit]
    end
  end
  root "home#index"
end
