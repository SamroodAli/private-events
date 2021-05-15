Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' ,registrations: 'users/registrations'}
  resources :events
  resources :tickets
  resources :users, only: :show
  delete '/tickets', to: "tickets#destroy"
  root "static_pages#home"
end
