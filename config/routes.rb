Rails.application.routes.draw do
  resources :locacaos
  resources :automovels
  resources :tipo_autos
  resources :habilitacaos
  resources :telefones
  resources :tipo_telefones
  resources :pessoas
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
