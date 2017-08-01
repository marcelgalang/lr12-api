Rails.application.routes.draw do
  resources :lefts
  resources :users

  # mount Knock::Engine => "/knock"
end
