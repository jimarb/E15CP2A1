Rails.application.routes.draw do
  devise_for :users
  resources :histories

  root "histories#index"

  get 'my_histories', to: 'histories#my_histories', as: 'my_histories'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
