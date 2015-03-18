Rails.application.routes.draw do
  get 'ui(/:action)', controller: 'ui'
  
  get 'services', controller: 'pages'
  get 'about_us', controller: 'pages'
  get 'vip_rewards', controller: 'pages'
  get 'policies', controller: 'pages'
  get 'resources', controller: 'pages'
  get 'contact', controller: 'pages'

  root "pages#home"
end
