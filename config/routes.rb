Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :lefts, except: [:new, :edit]
      resources :users, except: [:new, :edit]
    end
  end
  root "api/v1/users#index"
  post '/login', to: "sessions#create"
  # mount Knock::Engine => "/knock"
  # By mounting the Knock Engine, we're exposing the following endpoint for authentication: http://localhost:3000/knock/auth_token
end
