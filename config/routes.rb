Rails.application.routes.draw do
  	resources :bird, only: %i[index show]
	resources :birdsongs, only: %i[index show]
	resources :location, only: %i[index show]
	resources :country, only: %i[index show]

	root to: 'bird#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
