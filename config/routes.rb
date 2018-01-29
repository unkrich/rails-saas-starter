Rails.application.routes.draw do

  mount StripeEvent::Engine, at: '/stripe/webhook' # provide a custom path

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks", registrations: "registrations" }
  root to: 'pages#index'

  resource :subscription
  resource :card

  get 'about' => 'pages#about'
  
end