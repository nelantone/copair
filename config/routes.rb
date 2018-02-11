# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  get 'user/:id' => 'users#show', :as => 'user'
  get 'users' => 'users#index'
  root to: 'users#home'
  post 'static_pages/thank_you_contact' => 'static_pages#thank_you_contact'
  get 'static_pages/thank_you_unconfirmed' => 'static_pages#thank_you_unconfirmed'
  get 'static_pages/user_demo' => 'static_pages#user_demo'
end
