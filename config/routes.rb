Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  root to: 'pages#index'

  resource :subscription
  resource :card
  
end
