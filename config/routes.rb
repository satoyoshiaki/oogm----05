Rails.application.routes.draw do

  #devise_for :users

  # resources :users, only: [:show]

  # # ログイン、アカウント編集後、任意のページに推移させるための記述
  # devise_for :users, controllers: {
  #       registrations: 'users/registrations'
  # }

  # devise_scope :user do
  #   root :to => "devise/sessions#new"
  # end

  devise_for :users, :controllers => {
    sessions: 'users/sessions'
  }



  devise_scope :user do
    root "users/sessions#new"
  end


  resources :recruitments
end
