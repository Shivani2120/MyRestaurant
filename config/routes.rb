Rails.application.routes.draw do
  
  root to: "home#index"
 
  resources :restaurants 

  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :subscriptions
  post "/card" => "subscriptions#create_card", as: :create_payment_method
  post 'subscribe' => 'subscriptions#subscribe', as: :subscribe
  
  get '/card/new' => 'subscriptions#new_card', as: :add_payment_method

  get 'success' => 'subscriptions#success', as: :success

end
