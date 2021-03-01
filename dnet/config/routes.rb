Rails.application.routes.draw do
  get 'welcome/index'
  resources :pengajuans, only: [:index,:show,:create,:update,:destroy]
  resources :welcomes
end
