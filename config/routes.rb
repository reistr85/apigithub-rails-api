Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/', to: 'root_api#index'
      resources :repositories, only: [:index, :show, :create, :update, :destroy]
      post '/github/get-repository-by-name', to: 'git_hub#get_repository_by_name'
    end
  end
end
