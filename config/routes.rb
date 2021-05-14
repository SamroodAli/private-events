Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'static_pages/home'
  devise_for :users, controllers: { sessions: 'users/sessions' ,registrations: 'users/registrations'}
  root "users#show"
end
