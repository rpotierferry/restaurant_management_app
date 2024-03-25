Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants, only: %w[index new show create] do
    resources :reviews, only: 'create'
  end
end
