Rails.application.routes.draw do
  resources :lefts
  resources :users
  root "lefts#index"
  # mount Knock::Engine => "/knock"
end
