Rails.application.routes.draw do
  resources :tveets
  root to: 'tveets#index'
end
