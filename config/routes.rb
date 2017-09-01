Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :lefts, except: [:new, :edit]
      resources :users, except: [:new, :edit]
    end
  end
  root "api/v1/users#index"

  scope :format => true, :constraints => { :format => 'json' } do
    post   "/login"       => "sessions#create"
    delete "/logout"      => "sessions#destroy"
  end


end
