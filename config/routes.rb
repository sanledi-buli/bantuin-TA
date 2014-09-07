BantuinTa::Application.routes.draw do
  root to: 'dashboard#index'
  devise_for :users, skip: [:sessions,:registration,:passwords]

  as :user do
    get 'signin' => 'sessions#new', as: :new_user_session
    post 'signin' => 'sessions#create', as: :user_session
    delete 'signout' => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  namespace :superadmin do
    resources :users
    resources :roles
  end
end
