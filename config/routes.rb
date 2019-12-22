Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :locacaos
  resources :automovels
  resources :tipo_autos
  resources :habilitacaos
  resources :telefones
  resources :tipo_telefones
  resources :pessoas
end
