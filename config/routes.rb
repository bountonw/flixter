Rails.application.routes.draw do
  root 'static_pages#index'
  devise_for :users
  resource :dashboard, only: [:show]
  get 'privacy', to: 'static_pages#privacy'
  get 'team', to: 'static_pages#team'
  get 'careers', to: 'static_pages#careers'
  resources :courses, only: [:index, :show] do
    resources :enrollments, only: [:create]
    resources :sections, only: [:update]
  end
  resources :lessons, only: [:show]
  namespace :instructor do
    resources :sections, only: [:update]
    resources :lessons, only: [:update]
  	resources :sections, only: [] do
			resources :lessons, only: [:create]
		end
  	resources :courses, only: [:new, :create, :show] do
  		resources :sections, only: [:create]
  	end
	end
end
