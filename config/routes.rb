Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :lefts, except: [:new, :edit]
      resources :users, except: [:new, :edit]
    end
  end
  root "api/v1/users#index"
end
