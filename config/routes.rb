Rails.application.routes.draw do
  get 'ui(/:action)', controller: 'ui'

  resources :testimonials, only: [:new, :create, :edit, :update]
  resources :sessions, only: [:create]

  get '/sign_in', to: 'sessions#new'
  get '/sign_out', to: 'sessions#destroy'
  
  get 'services', controller: 'pages'
  get 'about_us', controller: 'pages'
  get 'vip_rewards', controller: 'pages'
  get 'policies', controller: 'pages'
  get 'resources', controller: 'pages'
  get 'contact', controller: 'pages'

  root "pages#home"
end
