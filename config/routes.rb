BantuinTa::Application.routes.draw do
  root to: 'dashboard#index'
  devise_for :users, skip: [:sessions,:registration,:passwords]

  as :user do
    get 'signin' => 'sessions#new', as: :new_user_session
    post 'signin' => 'sessions#create', as: :user_session
  end
end
