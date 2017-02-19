Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#root"

  namespace :api, defaults: {format: :json} do
    resources :benches, only: [:create, :show, :index]
    resource :user, only: [:create]
    resource :session, only: [:create, :destroy, :show]
    resources :reviews, only: [:create]

  end

end
