Rails.application.routes.draw do
  post 'login' => 'sessions#create'
  post 'user_token' => 'user_token#create'
  get 'get_user' => 'user_token#get_user'
  get 'login_user' => 'session#get_user'
  namespace :api do
    namespace :v1 do
      resources :lefts, except: [:edit]
      resources :users, except: [:edit]
      resources :rights, except: [:edit]
      resources :ones, except: [:edit]
      resources :twos, except: [:edit]
    end
  end
  root "api/v1/users#index"
  match '*path', via: [:options], to: lambda {|_| [204, { 'Content-Type' => 'text/plain' }]}
end
