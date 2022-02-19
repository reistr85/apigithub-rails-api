Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/', to: 'root_api#index'

      resources :repositories, only: [:index, :show, :create, :update, :destroy]
    end
  end
end
