Rails.application.routes.draw do
  get 'authors', to: 'authors#index'
  get 'authors/:id', to: 'authors#show'
  get 'posts', to: 'posts#index'
  get 'posts/:id', to: 'posts#show'
end
