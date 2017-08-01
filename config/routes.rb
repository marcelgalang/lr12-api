Rails.application.routes.draw do
  resources :lefts
  resources :users
  root '/'
  # mount Knock::Engine => "/knock"
end
