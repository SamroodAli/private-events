Rails.application.routes.draw do
  get 'static_pages/home'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root "static_pages#home"
end
