Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :orders
  resources :miscs
  resources :mdmas
  resources :lsds
  resources :cocaines
  resources :cannabis
  resources :synth_cannabinoids
  resources :opiates
  resources :products
  devise_for :users,
    :controllers => {
    :registrations => "registrations"
   }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/wallet' => "home#wallet"
  get '/faq' => "home#faq"
  get '/lowbtc' => "home#lowbtc"
  get '/error' => "home#error"
  get '/success' => "home#success"
  get '/withdraw' => "home#withdraw"
  get '/currentvisit' => "home#currentvisit"
  get '/contact' => "home#contact"
  root 'home#index' 
end
