Rails.application.routes.draw do
  root 'pages#index'
  resources :bank_accounts, only: [:index, :show]
end
