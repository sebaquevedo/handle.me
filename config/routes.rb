Rails.application.routes.draw do
  resources :activities
  resources :reservations
  devise_for :users, controllers: {
         registrations: 'users/registrations'
       }
  resources :ubications
  resources :subsidiaries
  root to: "subsidiaries#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
