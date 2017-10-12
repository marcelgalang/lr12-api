Rails.application.routes.draw do
  resources :rights
  resources :twos
  resources :ones
  namespace :api do
    namespace :v1 do
      resources :rights
    end
  end
  namespace :api do
    namespace :v1 do
      resources :twos
    end
  end
  namespace :api do
    namespace :v1 do
      resources :ones
    end
  end
  namespace :api do
    namespace :v1 do
      resources :lefts, except: [:edit]
      resources :users, except: [:edit]
    end
  end
  root "api/v1/users#index"
  match '*path', via: [:options], to: lambda {|_| [204, { 'Content-Type' => 'text/plain' }]}
end
