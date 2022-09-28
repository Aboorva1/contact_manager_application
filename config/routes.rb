Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "contacts#index"
  resources :contacts do
  get '/page/:page', action: :index, on: :collection
  end
end
