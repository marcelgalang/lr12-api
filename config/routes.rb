Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :lefts, except: [:edit]
      resources :users, except: [:edit]
    end
  end
  root "api/v1/users#index"
  match '*path', via: [:options], to: lambda {|_| [204, { 'Content-Type' => 'text/plain' }]}
end
