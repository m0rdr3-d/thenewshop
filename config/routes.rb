Rails.application.routes.draw do
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
  root 'home#index' 
end
