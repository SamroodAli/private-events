Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' ,registrations: 'users/registrations'}
  resources :events
  resources :tickets
  resources :users, only: :show
  root "static_pages#home"
end
