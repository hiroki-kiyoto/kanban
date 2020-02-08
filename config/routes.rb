Rails.application.routes.draw do
  devise_for :users
  root 'tops#index'
  resources :lists, only: %i(new create edit update destroy) do
    resources :cards, except: %i(index)
  end
end
