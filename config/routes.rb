Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :activities do 
    get 'takeroom'
  end
  devise_for :users, controllers: {
         registrations: 'users/registrations'
       }


  resources :users do
    resources :user_activities
  end
  resources :subsidiaries do
    # member do
      resources :ubications do 
        resources :reservations 
      end
    # end

  end


  root to: "activities#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
