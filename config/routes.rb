Rails.application.routes.draw do
  resources :tracks do
    resources :exercises
  end
  root 'tracks#index'
end
