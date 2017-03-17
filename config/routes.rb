Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :activities
  devise_for :users, controllers: {
         registrations: 'users/registrations'
       }


  resources :subsidiaries do
    # member do
      resources :ubications do 
        resources :reservations 
      end
    # end

  end

  root to: "subsidiaries#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
