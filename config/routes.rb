Rails.application.routes.draw do
  get 'licenses/index'
  get 'providers/index'
  get 'types/index'
  get 'about/index'
  	resources :birds, only: %i[index show]
	resources :birdsongs, only: %i[index show]
	resources :locations, only: %i[index show]
	resources :countries, only: %i[index show]
	resources :types, only: %i[index]
	resources :licenses, only: %i[index]
	resources :providers, only: %i[index]
	resources :about

	root to: 'birds#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
