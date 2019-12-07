Rails.application.routes.draw do
	root 'movies#index'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :movies do
  	resources :comments
  end
end
