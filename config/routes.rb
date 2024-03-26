Rails.application.routes.draw do
  devise_for :users
  root to: 'restaurants#index'
  resources :restaurants, only: %w[index new show create] do
    resources :reviews, only: %w[create index]
  end
end
