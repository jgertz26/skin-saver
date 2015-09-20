Rails.application.routes.draw do
  root 'homes#index'

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :users, only: [:index] do
    resources :reminders, only: [:show, :create]
  end
end
