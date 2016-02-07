Rails.application.routes.draw do
  authenticate :user do 
    root to: 'cases#index', as: :authenticated_root
    resources :cases
  end
  root :to => redirect('/users/sign_in')
  devise_for :users
end